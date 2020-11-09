package com.itwill.gukbap.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwill.gukbap.domain.ChatDomain;
import com.itwill.gukbap.repository.ChatRepository;
import com.itwill.gukbap.repository.ChatRepositoryImpl;

//@WebServlet("/ChatListServlet")
public class ChatListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		String listType=request.getParameter("listType");
		if(listType == null || listType.equals("")) response.getWriter().write("");
		else if(listType.equals("today")) response.getWriter().write(getToday());
		else if(listType.equals("ten")) response.getWriter().write(getTen());
		else {
			try {
				Integer.parseInt(listType);
				response.getWriter().write(getID(listType));
			} catch (Exception e) {
				response.getWriter().write("");
			}
		}
	}
	
	public String getToday() {
		StringBuffer result=new StringBuffer("");
		result.append("{\"result\":[");
		ChatRepository chatRepository=new ChatRepositoryImpl();
		ArrayList<ChatDomain> chatList=chatRepository.getChatList(new SimpleDateFormat("yyyy.MM.dd 23:59").format(new Date()));
		for(int i=0; i<chatList.size(); i++) {
			result.append("{\"name\":\""+chatList.get(i).getChatName()+"\", \"content\":\""+chatList.get(i).getChatContent()+"\", \"time\":\""+chatList.get(i).getChatTime()+"\"}");
			if(i != chatList.size() -1) result.append(",");
		}
		result.append("], \"last\":\""+chatList.get(chatList.size() -1).getChatID()+ "\"}");
		return result.toString();
		
	}
	
	public String getTen() {
		StringBuffer result=new StringBuffer("");
		result.append("{\"result\":[");
		ChatRepository chatRepository=new ChatRepositoryImpl();
		ArrayList<ChatDomain> chatList=chatRepository.getChatListByResentTen(10);
		for(int i=0; i<chatList.size(); i++) {
			result.append("{\"name\":\""+chatList.get(i).getChatName()+"\", \"content\":\""+chatList.get(i).getChatContent()+"\", \"time\":\""+chatList.get(i).getChatTime()+"\"}");
			if(i != chatList.size() -1) result.append(",");
		}
		result.append("], \"last\":\""+chatList.get(chatList.size() -1).getChatID()+ "\"}");
		return result.toString();
		
	}
	
	public String getID(String listType) {
		StringBuffer result=new StringBuffer("");
		result.append("{\"result\":[");
		ChatRepository chatRepository=new ChatRepositoryImpl();
		ArrayList<ChatDomain> chatList=chatRepository.getChatListByResentChatID(listType);
		for(int i=0; i<chatList.size(); i++) {
			result.append("{\"name\":\""+chatList.get(i).getChatName()+"\", \"content\":\""+chatList.get(i).getChatContent()+"\", \"time\":\""+chatList.get(i).getChatTime()+"\"}");
			if(i != chatList.size() -1) result.append(",");
		}
		result.append("], \"last\":\""+chatList.get(chatList.size() -1).getChatID()+ "\"}");
		return result.toString();
		
	}
	
}
