package com.itwill.gukbap.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.itwill.gukbap.repository.ChatRepository;


public class ChatRepositoryTestMain {

	public static void main(String[] args) {
		
		ApplicationContext applicationContext = 
				new ClassPathXmlApplicationContext("classpath:/spring/application-context.xml");
		ChatRepository chatDao = applicationContext.getBean(ChatRepository.class);
		
		//1.테스트 전부 뽑기
		//System.out.println(chatDao.selectAll());
		
		//2.특정 시간 이전의 모든 메시지 뽑기
		//System.out.println(chatDao.getChatList("2020.11.06 18:00"));
		
		//3.숫자 지정 최근 메시지 뽑기
		//System.out.println(chatDao.getChatListByResentTen(3));
		
		//4.특정 채팅 번호 이후의 메시지 뽑기
		//System.out.println(chatDao.getChatListByResentChatID(5));
		
		//5.메시지 전송
		//System.out.println(chatDao.submit("띠로리", "새벽 5시 채팅 테스트..."));
		

		

	}

}
