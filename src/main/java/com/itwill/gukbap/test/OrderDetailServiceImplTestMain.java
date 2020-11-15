package com.itwill.gukbap.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.gukbap.domain.OrderDetailDomain;
import com.itwill.gukbap.service.OrderDetailService;
import com.itwill.gukbap.service.ProductService;

public class OrderDetailServiceImplTestMain {

	public static void main(String[] args) {
		ApplicationContext applicationContext =
				new ClassPathXmlApplicationContext("classpath:/spring/application-context.xml");
		OrderDetailService service = applicationContext.getBean(OrderDetailService.class);
		ProductService pService = applicationContext.getBean(ProductService.class);
		
//		service.updateProductCount(new OrderDetailDomain(0, 21, 3, pService.selectProductByProductNo(2)));
		//service.deleteOrderDetail(new OrderDetailDomain(0, 21, 0, pService.selectProductByProductNo(2)));
		System.out.println(service.selectOrderDetailByO_d_no(50));
	}

}
