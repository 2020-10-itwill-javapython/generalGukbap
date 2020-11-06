package com.itwill.gukbap.mapper;

import java.util.ArrayList;

import com.itwill.gukbap.domain.ChatDomain;


public interface ChatMapper {
	
	//특정 시간의 메시지를 가져오는 메소드
	public ArrayList<ChatDomain> getChatList(String nowTime);
	
	//최근 10개의 메시지를 가져오는 메소드(매개변수 int)
	public ArrayList<ChatDomain> getChatListByResent(int number);
	
	//최근 10개의 메시지를 가져오는 메소드(매개변수 String)
	public ArrayList<ChatDomain> getChatListByResent(String chatID);
	
	//메시지를 전송하는 메소드
	public int submit(String chatName, String chatContent);
	
	
	
	
	

}
