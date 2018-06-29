package com._520it.crm.service;

import java.util.List;

import com._520it.crm.domain.Permission;
import com._520it.crm.page.PageResult;
import com._520it.crm.web.query.PermissionQueryObject;

public interface IPermissionService {
	int deleteByPrimaryKey(Long id);

    int insert(Permission record);

    Permission selectByPrimaryKey(Long id);

    List<Permission> selectAll();

    int updateByPrimaryKey(Permission record);

	PageResult queryForPage(PermissionQueryObject eq);

	List<String> queryPermissionByEid(Long id);

	
}
