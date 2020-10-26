package com.itwill.gukbap.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.gukbap.domain.UserDomain;
import com.itwill.gukbap.repository.UserRepository;

public class UserRepositoryTestMain {

	public static void main(String[] args) {
		ApplicationContext applicationContext = 
				new ClassPathXmlApplicationContext("classpath:/spring/application-context.xml");
		UserRepository userDao = applicationContext.getBean(UserRepository.class);
		System.out.println(userDao.selectAll());
//		System.out.println(userDao.selectUserById("helprun@naver.com"));
//		System.out.println(userDao.isExistedUser("helprun@naver.com"));
//		System.out.println(userDao.insertUser(
//				new UserDomain(
//						"test@naver.com", "password", 
//						"test", "test", "19930320", 
//						"01075127505", null)));
//		System.out.println(userDao.selectUserById("test@naver.com"));
//		System.out.println(userDao.updateUser(
//				new UserDomain(
//						"test@naver.com", "updated", 
//						"update", "update", "19911113", 
//						"01012345678", null)));
//		System.out.println(userDao.selectUserById("test@naver.com"));
//		System.out.println(userDao.deleteUser("test@naver.com"));
//		System.out.println(userDao.selectUserById("OMG_mim@naver.com"));
		
	}

}
