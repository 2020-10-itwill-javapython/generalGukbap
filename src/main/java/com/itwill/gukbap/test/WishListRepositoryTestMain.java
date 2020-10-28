package com.itwill.gukbap.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.gukbap.domain.WishListDomain;
import com.itwill.gukbap.repository.ProductRepository;
import com.itwill.gukbap.repository.WishListRepository;

public class WishListRepositoryTestMain {

	public static void main(String[] args) {
		ApplicationContext applicationContext = 
				new ClassPathXmlApplicationContext("classpath:/spring/application-context.xml");
		WishListRepository wishListRepository = applicationContext.getBean(WishListRepository.class);
		ProductRepository productRepository = applicationContext.getBean(ProductRepository.class);
		
//		System.out.println(wishListRepository.selectWishList("helprun@naver.com"));
//		System.out.println(wishListRepository.
//				removeItemFromWishList(
//						new WishListDomain(0, 
//										"helprun@naver.com", 
//										productRepository.selectProductByProductNo(3))));
//		System.out.println(wishListRepository.clearWishList("OMG_mim@naver.com"));
//		System.out.println(wishListRepository.
//				insertItemIntoWishList(
//						new WishListDomain(0, 
//								"helprun@naver.com",
//								 productRepository.selectProductByProductNo(1))));
	}

	
}
