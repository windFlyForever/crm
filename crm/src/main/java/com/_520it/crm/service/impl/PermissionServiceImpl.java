package com._520it.crm.service.impl;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com._520it.crm.domain.Permission;
import com._520it.crm.mapper.PermissionMapper;
import com._520it.crm.page.PageResult;
import com._520it.crm.service.IPermissionService;
import com._520it.crm.web.query.PermissionQueryObject;

@Service
public class PermissionServiceImpl implements IPermissionService {
	
	@Autowired
	private PermissionMapper permissionDao;
	
	@Override
	public int deleteByPrimaryKey(Long id) {
		// TODO Auto-generated method stub
		return permissionDao.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(Permission record) {
		// TODO Auto-generated method stub
		int row=permissionDao.insert(record);
	
		return row;
	}

	@Override
	public Permission selectByPrimaryKey(Long id) {
		// TODO Auto-generated method stub
		return permissionDao.selectByPrimaryKey(id);
	}

	@Override
	public List<Permission> selectAll() {
		// TODO Auto-generated method stub
		return permissionDao.selectAll();
	}

	@Override
	public int updateByPrimaryKey(Permission record) {
		// TODO Auto-generated method stub
		return permissionDao.updateByPrimaryKey(record);
	}



	@Override
	public PageResult queryForPage(PermissionQueryObject eq) {
		// TODO Auto-generated method stub
		Long count=permissionDao.queryForPagecount(eq);
		if(count==0) {
			
			return new PageResult(0,Collections.EMPTY_LIST);
		}
		
		List list=permissionDao.queryForPage(eq);
		return new PageResult(count.intValue(),list);
	}

	@Override
	public List<String> queryPermissionByEid(Long id) {
		// TODO Auto-generated method stub
		return permissionDao.queryPermissionByEid(id);
	}


}
