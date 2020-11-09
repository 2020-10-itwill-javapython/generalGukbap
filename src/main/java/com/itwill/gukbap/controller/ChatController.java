package com.itwill.gukbap.controller;

import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.gukbap.domain.ChatDomain;
import com.itwill.gukbap.repository.ChatRepository;
import com.itwill.gukbap.repository.ChatRepositoryImpl;


@RestController
public class ChatController {
	@Autowired
	ChatRepository chatRepository;
	@RequestMapping(value = "/chatSubmitServlet",produces = "text/html;charset=UTF-8")
	public String chatSubmit(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("UTF-8");
		
		String chatName=URLDecoder.decode(request.getParameter("chatName"), "UTF-8");
		String chatContent=URLDecoder.decode(request.getParameter("chatContent"), "UTF-8");
		String msg="";
		if(chatName==null || chatName.equals("") || chatContent==null || chatContent.equals("")) {
			msg="0";
		}else {
			msg=chatRepository.submit(chatName, chatContent)+"";
		}
		return msg;
	}
	
	@RequestMapping(value = "/chatListServlet",produces = "text/html;charset=UTF-8")
	public String chatList(HttpServletRequest request,HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		String listType=request.getParameter("listType");
		String msg="";
		if(listType == null || listType.equals("")) msg="";
		else if(listType.equals("today")) msg=getToday();
		else if(listType.equals("ten")) msg=getTen();
		else {
			try {
				Integer.parseInt(listType);
				//response.getWriter().write(getID(listType));
				msg=getID(listType);
			} catch (Exception e) {
				//response.getWriter().write("");
				msg="";
			}
		}
		return msg;
	}
	
	public String getToday() {
		StringBuffer result=new StringBuffer("");
		result.append("{\"result\":[");
		
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
		
		ArrayList<ChatDomain> chatList=chatRepository.getChatListByResentChatID(listType);
		for(int i=0; i<chatList.size(); i++) {
			result.append("{\"name\":\""+chatList.get(i).getChatName()+"\", \"content\":\""+chatList.get(i).getChatContent()+"\", \"time\":\""+chatList.get(i).getChatTime()+"\"}");
			if(i != chatList.size() -1) result.append(",");
		}
		result.append("], \"last\":\""+chatList.get(chatList.size() -1).getChatID()+ "\"}");
		return result.toString();
		
	}
}
