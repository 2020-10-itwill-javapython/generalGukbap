package com.itwill.gukbap.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.gukbap.domain.OrderDetailDomain;
import com.itwill.gukbap.repository.OrderRepository;
import com.itwill.gukbap.service.OrderService;
import com.itwill.gukbap.service.ProductService;

public class OrderServiceImplTestMain {

	public static void main(String[] args) {
		ApplicationContext applicationContext = 
				new ClassPathXmlApplicationContext("classpath:/spring/application-context.xml");
		OrderService orderService= applicationContext.getBean(OrderService.class);
		ProductService productService= applicationContext.getBean(ProductService.class);
		
//		orderService.insertOrder(
//				"big-test@naver.com", 
//				new OrderDetailDomain(0, 20, 1, productService.selectProductByProductNo(2)));
//		System.out.println(orderService.selectOrdersByName("helprun@naver.com"));
//		System.out.println(orderService.selectOrderByNo(20));
//		System.out.println(orderService.deleteOrder(6));
	}

}