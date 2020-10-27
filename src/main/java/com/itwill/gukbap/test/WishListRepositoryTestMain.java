package com.itwill.gukbap.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.gukbap.repository.WishListRepository;

public class WishListRepositoryTestMain {

	public static void main(String[] args) {
		ApplicationContext applicationContext = 
				new ClassPathXmlApplicationContext("classpath:/spring/application-context.xml");
		WishListRepository wishListRepository = applicationContext.getBean(WishListRepository.class);
		
		System.out.println(wishListRepository.selectWishList("helprun@naver.com"));
	}

}
