package com._520it.crm.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com._520it.crm.page.PageResult;
import com._520it.crm.query.QueryObject;
import com._520it.crm.service.IPermissionService;
import com._520it.crm.web.query.PermissionQueryObject;

@Controller
public class PermissionController {
	
	@Autowired
	private IPermissionService permissionService;
	
	@RequestMapping("/permission_list")
	@ResponseBody
	public PageResult list(PermissionQueryObject eq) {
		PageResult result=null;
		result=permissionService.queryForPage(eq);
		return result;		
	}
	
	
	
	@RequestMapping("/permission_roleId")
	@ResponseBody
	public PageResult permissionByRoleId(PermissionQueryObject eq) {
		PageResult result=null;
		result=permissionService.queryForPage(eq);
		return result;		
	}
	
}
