package com.itwill.gukbap.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.gukbap.domain.ChatDomain;
import com.itwill.gukbap.repository.ChatRepository;

@Service
public class ChatServiceImpl implements ChatService {
	
	@Autowired
	private ChatRepository chatRepository;
	
	@Override
	public ArrayList<ChatDomain> selectAll() {
		return chatRepository.selectAll();
	}
	
	@Override
	public ArrayList<ChatDomain> getChatList(String nowTime) {
		return chatRepository.getChatList(nowTime);
	}
	
	@Override
	public ArrayList<ChatDomain> getChatListByResentTen(int number) {
		return chatRepository.getChatListByResentTen(number);
	}
	
	@Override
	public ArrayList<ChatDomain> getChatListByResentChatID(int chatID) {
		return chatRepository.getChatListByResentChatID(chatID);
	}
	
	@Override
	public int submit(String chatName, String chatContent) {
		return chatRepository.submit(chatName, chatContent);
	}

}
