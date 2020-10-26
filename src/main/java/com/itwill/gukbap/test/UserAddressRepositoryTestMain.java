package com.itwill.gukbap.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.gukbap.domain.UserAddressDomain;
import com.itwill.gukbap.repository.UserAddressRepository;

public class UserAddressRepositoryTestMain {

	public static void main(String[] args) {
		ApplicationContext applicationContext =
				new ClassPathXmlApplicationContext("classpath:/spring/application-context.xml");
		UserAddressRepository userAddressRepository = applicationContext.getBean(UserAddressRepository.class);
		
//		System.out.println(
//				userAddressRepository.
//				map_user_with_address(new UserAddressDomain("helprun@naver.com", 18)));
		
//		System.out.println(
//				userAddressRepository.
//				delete_userAddress(new UserAddressDomain("helprun@naver.com", 18)));
//		System.out.println(userAddressRepository.delete_all_address("helprun@naver.com"));
	}

}
