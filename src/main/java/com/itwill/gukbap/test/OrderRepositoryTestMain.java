package com.itwill.gukbap.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.gukbap.repository.OrderRepository;

public class OrderRepositoryTestMain {

	public static void main(String[] args) {
		
		ApplicationContext applicationContext = 
				new ClassPathXmlApplicationContext("classpath:/spring/application-context.xml");
		OrderRepository addressDao = applicationContext.getBean(OrderRepository.class);
		System.out.println(addressDao.selectAll());
	}

}
