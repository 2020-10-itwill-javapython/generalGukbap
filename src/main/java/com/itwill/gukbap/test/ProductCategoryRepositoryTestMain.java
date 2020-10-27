package com.itwill.gukbap.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.gukbap.domain.ProductCategoryDomain;
import com.itwill.gukbap.repository.ProductCategoryRepository;
import com.itwill.gukbap.repository.ProductRepository;

public class ProductCategoryRepositoryTestMain {

	public static void main(String[] args) {
		ApplicationContext applicationContext = 
				new ClassPathXmlApplicationContext("classpath:/spring/application-context.xml");
		
		ProductCategoryRepository productCategoryDao=applicationContext.getBean(ProductCategoryRepository.class);
		
		//1.모든 카테고리 찾기
		System.out.println(productCategoryDao.selectAll());
		
		//2.카테고리 번호로 하나 찾기
		//System.out.println(productCategoryDao.selectProductCategoryByCategoryNo(1));
		
		//3.카테고리 하나 삽입
		//System.out.println(productCategoryDao.insertProductCategory(new ProductCategoryDomain(6, "카테고리")));
		
		//4.카테고리명 변경
		//System.out.println(productCategoryDao.updateProductCategoryName(new ProductCategoryDomain(4, "테스트")));
		
		//5.카테고리명으로 삭제
		//System.out.println(productCategoryDao.deleteProductCategoryByCategoryName("테스트"));
		
		//6.카테고리번호로 삭제
		//System.out.println(productCategoryDao.deleteProductCategoryByCategoryNo(6));
		
		

	}

}
