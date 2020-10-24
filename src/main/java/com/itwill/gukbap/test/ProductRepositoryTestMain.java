package com.itwill.gukbap.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.gukbap.domain.ProductDomain;
import com.itwill.gukbap.repository.ProductRepository;



public class ProductRepositoryTestMain {

	public static void main(String[] args) {
		ApplicationContext applicationContext = 
				new ClassPathXmlApplicationContext("classpath:/spring/application-context.xml");
		
		ProductRepository productDao=applicationContext.getBean(ProductRepository.class);
		
		//1.모든 제품 찾기
		//System.out.println(productDao.selectAll());
		
		//2.제품명으로 제품 하나 찾기
		//System.out.println(productDao.selectProductByProductName("테스트국밥"));
		
		//3.제품번호로 제품 하나 찾기
		//System.out.println(productDao.selectProductByProductNo(39));
		
		//4.카테고리번호로 제품 여러 개 찾기
		//System.out.println(productDao.selectProductByCategoryNo(1));
		
		//5.현재 날짜로 할인 중인 제품 하나 찾기
		//System.out.println(productDao.selectProductIsOnSale("2020/10/20"));
		
		//5.제품 추가
		//System.out.println(productDao.insertProduct(
//				new ProductDomain(17,"테스트국밥2",7000,"사진","테스트국밥2",0,0,1,0,"false",0,"20/10/22")));
				
				
		//6.제품명으로 제품 하나 삭제
		//System.out.println(productDao.deleteProductByProductName("테스트국밥2"));
		
		//7.제품번호로 제품 하나 삭제
		//System.out.println(productDao.deleteProductByProductNo(39));
	}

}
