package com._520it.crm.service.impl;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com._520it.crm.domain.Employee;
import com._520it.crm.domain.Role;
import com._520it.crm.mapper.EmployeeMapper;
import com._520it.crm.page.PageResult;
import com._520it.crm.query.EmployeeQueryObject;
import com._520it.crm.service.IEmployeeService;

@Service
public class EmployeeServiceImpl implements IEmployeeService {
	
	@Autowired
	private EmployeeMapper employeeDao;
	
	@Override
	public int deleteByPrimaryKey(Long id) {
		// TODO Auto-generated method stub
		return employeeDao.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Employee record) {
		// TODO Auto-generated method stub
		int row=employeeDao.insert(record);
		//维护用户与角色的关系		
		List<Role> roles=record.getRoles();
		for (Role role : roles) {
			employeeDao.insertRelation(record.getId(), role.getId());
		}		
		return row;
	}

	@Override
	public Employee selectByPrimaryKey(Long id) {
		// TODO Auto-generated method stub
		return employeeDao.selectByPrimaryKey(id);
	}

	@Override
	public List<Employee> selectAll() {
		// TODO Auto-generated method stub
		return employeeDao.selectAll();
	}

	@Override
	public int updateByPrimaryKey(Employee record) {
		// TODO Auto-generated method stub
		int row=employeeDao.updateByPrimaryKey(record);
		//删除旧的关系
		employeeDao.deleteRolesByEid(record.getId());
		//更新新的关系
		List<Role> roles=record.getRoles();
		for (Role role : roles) {
			employeeDao.insertRelation(record.getId(), role.getId());
		}	
		return row;
	}

	@Override
	public Employee getEmployeeForLogin(String username, String password) {
		// TODO Auto-generated method stub
		return employeeDao.getEmployeeForLogin(username, password);
	}

	@Override
	public PageResult queryForPage(EmployeeQueryObject eq) {
		// TODO Auto-generated method stub
		Long count=employeeDao.queryForPagecount(eq);
		if(count==0) {
			
			return new PageResult(0,Collections.EMPTY_LIST);
		}
		
		List list=employeeDao.queryForPage(eq);
		return new PageResult(count.intValue(),list);
	}

	@Override
	public void updateStateById(long id) {
		// TODO Auto-generated method stub
		employeeDao.updateStateById(id);
	}

	@Override
	public List<Long> queryRolesByEid(Long eid) {
		// TODO Auto-generated method stub
		return employeeDao.queryRolesByEid(eid);
	}

}
