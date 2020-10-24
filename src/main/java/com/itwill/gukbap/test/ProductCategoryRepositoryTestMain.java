package com.itwill.gukbap.test;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.gukbap.domain.ProductCategoryDomain;
import com.itwill.gukbap.repository.ProductCategoryRepository;


public class ProductCategoryRepositoryTestMain {

	public static void main(String[] args) {
		ApplicationContext applicationContext = 
				new ClassPathXmlApplicationContext("classpath:/spring/application-context.xml");
		
		ProductCategoryRepository productCategoryDao=
				applicationContext.getBean(ProductCategoryRepository.class);
		
		//1. 모든 분류
		System.out.println(productCategoryDao.selectAll());
		/*
			public List<ProductCategoryDomain> selectAll();
			
			public ProductCategoryDomain selectProductCategoryByCategoryName(String c_name);
		
			public ProductCategoryDomain selectProductCategoryByCategoryNo(int c_no);
			
			public int insertProductCategory(ProductCategoryDomain category);
			
			public int updateProductCategory(ProductCategoryDomain category);
			
			public int deleteProductCategoryByCategoryName(String c_name);
			
			public int deleteProductCategoryByCategoryNo(int c_no);
	 
		 */

	}

}
