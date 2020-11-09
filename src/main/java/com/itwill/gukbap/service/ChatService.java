package com.itwill.gukbap.service;

import java.util.ArrayList;

import com.itwill.gukbap.domain.ChatDomain;

public interface ChatService {
	
	//테스트용 전체 메시지 
	ArrayList<ChatDomain> selectAll();

	//특정 시간대 이전의 모든 메시지를 가져오는 메소드
	ArrayList<ChatDomain> getChatList(String nowTime);
	
	//최근 10개의 메시지를 가져오는 메소드
	//number --> 최근 몇 개
	ArrayList<ChatDomain> getChatListByResentTen(int number);
	
	//특정 채팅 번호의 이후의 모든 메시지를 가져오는 메소드
	//chatID --> 특정 채팅 번호
	ArrayList<ChatDomain> getChatListByResentChatID(String chatID);
	
	//메시지를 전송하는 메소드
	int submit(String chatName, String chatContent);	
			

}
