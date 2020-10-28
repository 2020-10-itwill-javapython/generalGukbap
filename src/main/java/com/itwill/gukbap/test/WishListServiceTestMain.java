package com.itwill.gukbap.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.gukbap.service.WishListService;

public class WishListServiceTestMain {

	public static void main(String[] args) {
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("classpath:/spring/application-context.xml");
		WishListService service = applicationContext.getBean(WishListService.class);
		
//		System.out.println(service.addToWishList("helprun@naver.com", 3));
//		System.out.println(service.removeItemFromWishList("helprun@naver.com", 3));
		System.out.println(service.getWishListItems("helprun@naver.com"));
		
	}

}
