package com.itwill.gukbap.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.gukbap.domain.AddressDomain;
import com.itwill.gukbap.repository.AddressRepository;

public class AddressRepositoryTestMain {

	public static void main(String[] args) {
		
		ApplicationContext applicationContext = 
				new ClassPathXmlApplicationContext("classpath:/spring/application-context.xml");
		AddressRepository addressDao = applicationContext.getBean(AddressRepository.class);
		
		System.out.println(addressDao.selectAll());

		System.out.println(addressDao.selectAddressByNo(14));
		//System.out.println(addressDao.deleteAddress(20));

		//System.out.println(addressDao.insertAddress(new AddressDomain(1,"address", "address", "address", "address", "address")));
		System.out.println(addressDao.updateAddress(new AddressDomain(24,"변경", "변경", "변경", "변경", "변경")));

	}

}
