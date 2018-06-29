package com._520it.crm.service.impl;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com._520it.crm.domain.Employee;
import com._520it.crm.service.IEmployeeService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:application.xml")
public class EmployeeServiceImplTest {
	
	@Autowired
	private IEmployeeService employeeService;
	
	@Test
	public void testDeleteByPrimaryKey() {
		
	}

	@Test
	public void testInsert() {
		Employee emp=new Employee();
		employeeService.insert(emp);
	}

	@Test
	public void testSelectByPrimaryKey() {
		
	}

	@Test
	public void testSelectAll() {
		
	}

	@Test
	public void testUpdateByPrimaryKey() {
		
	}

}
