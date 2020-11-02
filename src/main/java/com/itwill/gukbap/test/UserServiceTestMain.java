package com.itwill.gukbap.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.gukbap.domain.AddressDomain;
import com.itwill.gukbap.domain.UserDomain;
import com.itwill.gukbap.service.UserService;

public class UserServiceTestMain {

	public static void main(String[] args) throws Exception {
		ApplicationContext applicationContext = 
				new ClassPathXmlApplicationContext("classpath:/spring/application-context.xml");
		UserService userService = applicationContext.getBean(UserService.class);
//		System.out.println(userService.selectAll());
//		System.out.println(userService.login("helrun@naver.com", "password"));
//		System.out.println(
//				userService.registerNewUser(
//						new UserDomain(
//								"big-test@naver.com", "password",
//								"first name", "last name", 
//								"19920505", "01025954808", "",null, null),
//						new AddressDomain(0, "테스트주소", "테스트주소", "테스트주소", "테스트주소", "테스트주소")));
//		System.out.println(userService.selectUserById("helprun@naver.com"));
//		System.out.println(
//				userService.updateUserInfo(
//						new UserDomain(
//								"akiratksk@naver.com", "update",
//								"이름", "성", 
//								"19990101", "01025954808", null)));\
//		System.out.println(userService.deleteUser("akiratksk@naver.com"));
//		System.out.println(userService.deleteUser("OMG_mim@naver.com"));
	}

}
