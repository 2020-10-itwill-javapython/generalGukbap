package com.itwill.gukbap.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.gukbap.domain.ProductDomain;
import com.itwill.gukbap.service.ProductService;

public class ReviewServiceTestMain {

	public static void main(String[] args) {
		ApplicationContext applicationContext = 
				new ClassPathXmlApplicationContext("classpath:/spring/application-context.xml");
		ProductService productService=applicationContext.getBean(ProductService.class);
		
		//1.모든 제품 찾기
		//System.out.println(productService.selectAll());
		
		//2.제품명으로 제품 하나 찾기
		//System.out.println(productService.selectProductByProductName("테스트국밥"));
		
		//3.제품번호로 제품 하나 찾기
		//System.out.println(productService.selectProductByProductNo(3));
		
		//4.카테고리번호로 제품 여러 개 찾기
		//System.out.println(productService.selectProductByCategoryNo(2));
		
		//5.현재 날짜로 할인 중인 제품 하나 찾기
		//System.out.println(productService.selectProductIsOnSale("2020/10/20"));
		
		//5.제품 추가
		//System.out.println(productService.insertProduct(
//				new ProductDomain(23,"테스트",1000,"사진","테스트",0,0,3,0,"false",0,"20/10/25")));
				
				
		//6.제품명으로 제품 하나 삭제
		//System.out.println(productService.deleteProductByProductName("테스트사이드"));
		
		//7.제품번호로 제품 하나 삭제
		//System.out.println(productService.deleteProductByProductNo(23));
	}

}
