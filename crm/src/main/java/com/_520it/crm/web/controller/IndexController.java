package com._520it.crm.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com._520it.crm.domain.Menu;
import com._520it.crm.service.IMenuService;
import com._520it.crm.util.UserContext;

@Controller
public class IndexController {
	
	@Autowired
	private IMenuService menuService;
	
	@RequestMapping("/index")	
	public String index() {
		
		return "index";
	}
	
	@RequestMapping("/menu")
	@ResponseBody
	public List<Menu> queryForMenu(){
		List<Menu> result=null;	
		//从session中获取菜单
		result=(List<Menu>) UserContext.get().getSession().getAttribute(UserContext.MENUINSESSION);
		return result;
	}

}
