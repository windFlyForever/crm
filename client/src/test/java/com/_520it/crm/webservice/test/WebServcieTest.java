package com._520it.crm.webservice.test;

import java.util.Arrays;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com._520it.crm.webservice.ICaculateService;

import cn.com.webxml.ArrayOfString;
import cn.com.webxml.WeatherWSSoap;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:application-cxf-client.xml")
public class WebServcieTest {
	
	@Autowired
	private ICaculateService caculateService;
	@Autowired
	private WeatherWSSoap weather;
	@Test
	public void sum() {
		int sum=caculateService.getSum(10, 20);
		
		System.out.println(sum);
	}
	
	@Test
	public void weather() {
		ArrayOfString strweather=weather.getWeather("泰兴", "0443d1fa982d4816b9e703e969c8d7bf");
		List<String> list=strweather.getString();
		System.out.println(Arrays.toString(list.toArray()));
	}

}
