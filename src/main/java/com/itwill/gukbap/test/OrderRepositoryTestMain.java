package com.itwill.gukbap.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.gukbap.domain.OrderDomain;
import com.itwill.gukbap.repository.OrderRepository;

public class OrderRepositoryTestMain {

	public static void main(String[] args) {
		
		ApplicationContext applicationContext = 
				new ClassPathXmlApplicationContext("classpath:/spring/application-context.xml");
		OrderRepository addressDao = applicationContext.getBean(OrderRepository.class);
		System.out.println(addressDao.selectAll());
		
		System.out.println(addressDao.selectOrderByNo(13));
		 System.out.println(addressDao.selectOrderByName("helprun@naver.com"));
		//System.out.println(addressDao.insertOrder(new OrderDomain(1,"2020/10/26","status",0, "order_desc", "note","user_id")));
		//System.out.println(addressDao.updateOrder(new OrderDomain(6,"2020/10/26","status1",0, "order_desc1", "note1","chan@naver.com")));
	    System.out.println(addressDao.deleteOrder(14));
	  
	}
	

}
