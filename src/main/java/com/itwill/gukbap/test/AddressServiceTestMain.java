package com.itwill.gukbap.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.gukbap.domain.AddressDomain;
import com.itwill.gukbap.service.AddressService;


public class AddressServiceTestMain {
	
	public static void main(String[] args) {
		
		ApplicationContext applicationContext = 
				new ClassPathXmlApplicationContext("classpath:/spring/application-context.xml");
		AddressService addressService = applicationContext.getBean(AddressService.class);	
		
		
		System.out.println(addressService.selectAll());
		System.out.println(addressService.selectAddressByNo(22));
		//System.out.println(addressService.insertAddress(new AddressDomain(1,"address", "address", "address", "address", "address")));
		//System.out.println(addressService.updateAddress(new AddressDomain(24,"변경", "변경", "변경", "변경", "변경")));
		System.out.println(addressService.deleteAddress(25,"helprun@naver.com"));
	}

}
