package com._520it.crm.webservice.impl;

import javax.jws.WebService;

import com._520it.crm.webservice.ICaculateService;


@WebService(endpointInterface="com._520it.crm.webservice.ICaculateService")
public class CaculateServiceImpl implements ICaculateService {

	@Override
	public int getSum(int num1, int num2) {
		// TODO Auto-generated method stub
		System.out.println(num1);
		System.out.println(num2);
		
		return num1+num2;
	}

}
