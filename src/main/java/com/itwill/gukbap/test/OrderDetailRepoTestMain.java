package com.itwill.gukbap.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.gukbap.domain.OrderDetailDomain;
import com.itwill.gukbap.repository.OrderDetailRepository;
import com.itwill.gukbap.repository.ProductRepository;
import com.itwill.gukbap.service.AddressService;

public class OrderDetailRepoTestMain {

	public static void main(String[] args) {
		ApplicationContext applicationContext = 
				new ClassPathXmlApplicationContext("classpath:/spring/application-context.xml");
		OrderDetailRepository repository = applicationContext.getBean(OrderDetailRepository.class);	
		ProductRepository prodRepository = applicationContext.getBean(ProductRepository.class);
		
//		System.out.println(repository.updateProductCount(
//				new OrderDetailDomain(0, 17, 3, prodRepository.selectProductByProductNo(2))));
//		System.out.println(repository.selectOrderItems(18));
//		System.out.println(
//				repository.isAddedProduct(
//						new OrderDetailDomain(0, 17, 0, 
//								prodRepository.selectProductByProductNo(12))));
//		System.out.println(
//				repository.
//					deleteItemFromOrder(new OrderDetailDomain(0, 17, 0, prodRepository.selectProductByProductNo(2))));
//		System.out.println(repository.clearOrderList(17));
//		repository.addItemIntoOrder(new OrderDetailDomain(0, 19, 1, prodRepository.selectProductByProductNo(5)));
		System.out.println(repository.selectOrderDetailByO_d_no(48));
	}

}
