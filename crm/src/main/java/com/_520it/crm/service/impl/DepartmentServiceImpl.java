package com._520it.crm.service.impl;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com._520it.crm.domain.Department;
import com._520it.crm.mapper.DepartmentMapper;
import com._520it.crm.page.PageResult;
import com._520it.crm.service.IDepartmentService;

@Service
public class DepartmentServiceImpl implements IDepartmentService {
	
	@Autowired
	private DepartmentMapper departmentDao;
	
	@Override
	public int deleteByPrimaryKey(Long id) {
		// TODO Auto-generated method stub
		return departmentDao.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Department record) {
		// TODO Auto-generated method stub
		int row=departmentDao.insert(record);
	
		return row;
	}

	@Override
	public Department selectByPrimaryKey(Long id) {
		// TODO Auto-generated method stub
		return departmentDao.selectByPrimaryKey(id);
	}

	@Override
	public List<Department> selectAll() {
		// TODO Auto-generated method stub
		return departmentDao.selectAll();
	}

	@Override
	public int updateByPrimaryKey(Department record) {
		// TODO Auto-generated method stub
		return departmentDao.updateByPrimaryKey(record);
	}

	@Override
	public List<Department> queryDepForEmp() {
		// TODO Auto-generated method stub
		return departmentDao.queryDepForEmp();
	}



}
