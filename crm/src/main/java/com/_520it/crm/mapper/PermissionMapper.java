package com._520it.crm.mapper;

import java.util.List;

import com._520it.crm.domain.Permission;
import com._520it.crm.web.query.PermissionQueryObject;

public interface PermissionMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Permission record);

    Permission selectByPrimaryKey(Long id);

    List<Permission> selectAll();

    int updateByPrimaryKey(Permission record);

	Long queryForPagecount(PermissionQueryObject eq);

	List<Permission> queryForPage(PermissionQueryObject eq);

	List<String> queryPermissionByEid(Long id);
}