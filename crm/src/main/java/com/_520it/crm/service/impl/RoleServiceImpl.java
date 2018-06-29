package com._520it.crm.service.impl;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com._520it.crm.domain.Permission;
import com._520it.crm.domain.Role;
import com._520it.crm.mapper.RoleMapper;
import com._520it.crm.page.PageResult;
import com._520it.crm.query.RoleQueryObject;
import com._520it.crm.service.IRoleService;

@Service
public class RoleServiceImpl implements IRoleService {
	
	@Autowired
	private RoleMapper roleDao;
	
	@Override
	public int deleteByPrimaryKey(Long id) {
		// TODO Auto-generated method stub
		int row=roleDao.deleteByPrimaryKey(id);
		roleDao.deletePermissionByRoleId(id);
		return row;
	}

	@Override
	public int insert(Role record) {
		// TODO Auto-generated method stub
		int row=roleDao.insert(record);
		List<Permission> ps=record.getPermissions();
		
		for (Permission permission : ps) {
			roleDao.insertRelation(record.getId(), permission.getId());
		}
		
		return row;
	}

	@Override
	public Role selectByPrimaryKey(Long id) {
		// TODO Auto-generated method stub
		return roleDao.selectByPrimaryKey(id);
	}

	@Override
	public List<Role> selectAll() {
		// TODO Auto-generated method stub
		return roleDao.selectAll();
	}

	@Override
	public int updateByPrimaryKey(Role record) {
		// TODO Auto-generated method stub
		int row=roleDao.updateByPrimaryKey(record);
		roleDao.deletePermissionByRoleId(record.getId());
		List<Permission> ps=record.getPermissions();
		for (Permission permission : ps) {
			roleDao.insertRelation(record.getId(), permission.getId());
		}
		return row;
	}



	@Override
	public PageResult queryForPage(RoleQueryObject eq) {
		// TODO Auto-generated method stub
		Long count=roleDao.queryForPagecount(eq);
		if(count==0) {
			
			return new PageResult(0,Collections.EMPTY_LIST);
		}
		
		List list=roleDao.queryForPage(eq);
		return new PageResult(count.intValue(),list);
		
	}





}
