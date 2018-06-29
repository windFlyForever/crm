package com._520it.crm.web.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com._520it.crm.domain.Employee;
import com._520it.crm.domain.Menu;
import com._520it.crm.page.PageResult;
import com._520it.crm.query.EmployeeQueryObject;
import com._520it.crm.service.IEmployeeService;
import com._520it.crm.service.IMenuService;
import com._520it.crm.service.IPermissionService;
import com._520it.crm.util.AjaxResult;
import com._520it.crm.util.PermissionUtil;
import com._520it.crm.util.UserContext;

@Controller
public class EmployeeController {

	@Autowired
	private IEmployeeService employeeService;
	@Autowired
	private IPermissionService permissionService;
	@Autowired
	private IMenuService menuService;

	@RequestMapping("/employee")
	public String index() {
		System.out.println("index");
		return "employee";
	}

	@RequestMapping("/login")
	@ResponseBody
	public AjaxResult login(String username, String password, HttpServletRequest req) {
		UserContext.set(req);
		AjaxResult result = null;

		Employee currentemp = employeeService.getEmployeeForLogin(username, password);
		if (currentemp != null) {
			req.getSession().setAttribute(UserContext.USERINSESSION, currentemp);
			//登录成功后查询该用户的所有权限放入session中
			List<String> userPermission=permissionService.queryPermissionByEid(currentemp.getId());
			req.getSession().setAttribute(UserContext.PERMISSIONINSESSION, userPermission);
			
			List<Menu> menuInSession=menuService.queryForRoot();			
			PermissionUtil.checkMenuPermission(menuInSession);
			req.getSession().setAttribute(UserContext.MENUINSESSION, menuInSession);
			
			result =new AjaxResult(true, "登录成功误");
			
		} else {			
			result=new AjaxResult("账号密码有误");
		}

		return result;
	}

	@RequestMapping("/employee_list")
	@ResponseBody
	public PageResult list(EmployeeQueryObject qo) {

		PageResult result = null;
		result = employeeService.queryForPage(qo);

		return result;
	}
	
	@RequestMapping("/emp_save")
	@ResponseBody
	public AjaxResult saveEmp(Employee emp) {

		AjaxResult result = null;

		try {
			emp.setPassword("888888");
			emp.setAdmin(false);
			emp.setState(true);
			employeeService.insert(emp);
			result=new AjaxResult(true, "保存成功");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			
			result=new AjaxResult("保存异常，请联系管理员");
		}

		return result;
	}

	@RequestMapping("/emp_edit")
	@ResponseBody
	public AjaxResult editEmp(Employee emp) {

		AjaxResult result = null;

		try {
			employeeService.updateByPrimaryKey(emp);
			result =new AjaxResult(true, "修改成功");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			
			result=new AjaxResult("修改异常，请联系管理员");
		}

		return result;
	}
	
	@RequestMapping("/emp_del")
	@ResponseBody
	public AjaxResult delEmp(long id) {

		AjaxResult result = null;

		try {
			employeeService.updateStateById(id);
			result =new AjaxResult(true, "离职成功");
		} catch (Exception e) {
			// TODO Auto-generated catch block			
			result=new AjaxResult("离职异常，请联系管理员");
		}

		return result;
	}
	
	@RequestMapping("/queryRolesByEid")
	@ResponseBody
	public List<Long> queryRolesByEid(Long eid){
		List<Long> result=null;
		
		result=employeeService.queryRolesByEid(eid);
		return result;
	}

}
