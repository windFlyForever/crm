package com._520it.crm.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com._520it.crm.domain.Role;
import com._520it.crm.page.PageResult;
import com._520it.crm.query.RoleQueryObject;
import com._520it.crm.service.IRoleService;
import com._520it.crm.util.AjaxResult;

@Controller
public class RoleController {
	@Autowired
	private IRoleService roleService;
	
	
	@RequestMapping("/role")
	public String index() {
		
		return "role";
	}
	
	@RequestMapping("/role_save")
	@ResponseBody
	public AjaxResult roleSave(Role role) {
		AjaxResult result=null;
		
		try {
			roleService.insert(role);
			result=new AjaxResult(true,"保存成功");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result=new AjaxResult("保存失败，请联系管理员");
		}
		return result;
		
	}
	
	
	@RequestMapping("/role_list")
	@ResponseBody
	public PageResult roleList(RoleQueryObject ro) {
		PageResult result=null;
		
		result=roleService.queryForPage(ro);
		return result;
		
	}
	
	@RequestMapping("/role_edit")
	@ResponseBody
	public AjaxResult roleEdit(Role role) {
		AjaxResult result=null;
		
		try {
			roleService.updateByPrimaryKey(role);
			result=new AjaxResult(true,"更新成功");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result=new AjaxResult("更新失败，请联系管理员");
		}
		return result;
		
	}
	
	
	@RequestMapping("/role_del")
	@ResponseBody
	public AjaxResult roleDel(Role role) {
		AjaxResult result=null;		
		try {
			roleService.deleteByPrimaryKey(role.getId());
			result=new AjaxResult(true,"删除成功");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result=new AjaxResult("删除失败，请联系管理员");
		}
		return result;		
	}
	
	@RequestMapping("/query_role")
	@ResponseBody
	public List<Role> roleForEmp(){
		
		List<Role> result=null;
		result=roleService.selectAll();
		return result;
	}
	
}
