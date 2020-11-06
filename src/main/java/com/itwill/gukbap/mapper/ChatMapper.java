package com.itwill.gukbap.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.itwill.gukbap.domain.ChatDomain;

public interface ChatMapper {
	
	//테스트용 전체 메시지 
	public ArrayList<ChatDomain> selectAll();
	
	//특정 시간대 이전의 모든 메시지를 가져오는 메소드
	public ArrayList<ChatDomain> getChatList(String nowTime);
	
	//최근 10개의 메시지를 가져오는 메소드
	//number --> 최근 몇 개
	public ArrayList<ChatDomain> getChatListByResentTen(int number);
	
	//특정 채팅 번호의 이후의 모든 메시지를 가져오는 메소드
	//chatID --> 특정 채팅 번호
	public ArrayList<ChatDomain> getChatListByResentChatID(int chatID);
	
	//메시지를 전송하는 메소드
	//public int submit(String chatName, String chatContent);
	public int submit(@Param("chatName") String chatName, @Param("chatContent") String chatContent);
	
	 

	
	
	
	

}
