package com.itwill.gukbap.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.gukbap.domain.AddressDomain;
import com.itwill.gukbap.domain.ChatDomain;
import com.itwill.gukbap.mapper.ChatMapper;

@Repository
public class ChatRepositoryImpl implements ChatRepository{
	
	@Autowired
	ChatMapper chatMapper;
	
	@Override
	public ArrayList<ChatDomain> selectAll() {
		return chatMapper.selectAll();
	}
	
	@Override
	public ArrayList<ChatDomain> getChatList(String nowTime) {
		return chatMapper.getChatList(nowTime);
	}
	
	
	@Override
	public ArrayList<ChatDomain> getChatListByResentTen(int number) {
		return chatMapper.getChatListByResentTen(number);
	}
	
	@Override
	public ArrayList<ChatDomain> getChatListByResentChatID(String chatID) {
		return chatMapper.getChatListByResentChatID(chatID);
	}
	
	
	@Override
	public int submit(String chatName, String chatContent) {
		return chatMapper.submit(chatName, chatContent);
	}

	
	/*
	
	//특정 시간의 메시지를 가져오는 함수 
	public ArrayList<Chat> getChatList(String nowTime){
		ArrayList<Chat> chatList=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="SELECT * FROM CHAT WHERE chatTime < ? ORDER BY chatTime";
		try { 
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, nowTime);
			rs=pstmt.executeQuery();
			chatList=new ArrayList<Chat>();
			while(rs.next()) {
				Chat chat=new Chat();
				chat.setChatID(rs.getInt("chatID"));
				chat.setChatName(rs.getString("chatName"));
				*chat.setChatContent(rs.getString("chatContent").replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>"));
				
				*int chatTime=Integer.parseInt(rs.getString("chatTime").substring(11, 13));
				*String timeType="오전";
				*if(Integer.parseInt(rs.getString("chatTime").substring(11, 13)) >= 12) {
					timeType = "오후";
					chatTime -= 12;
				}
				
				*chat.setChatTime(rs.getString("chatTime").substring(0, 11) +  " " +timeType +  " " + chatTime + ":" + rs.getString("chatTime").substring(14, 16));
				
				*chatList.add(chat);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return chatList;
	}
	//최근 몇 개의 채팅만 가져오는 메소드
	public ArrayList<Chat> getChatListByResent(int number){
		ArrayList<Chat> chatList=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="SELECT * FROM CHAT WHERE chatID > (SELECT MAX(chatID) - ? FROM CHAT) ORDER BY chatTime";
		try { 
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, number);
			rs=pstmt.executeQuery();
			chatList=new ArrayList<Chat>();
			while(rs.next()) {
				Chat chat=new Chat();
				chat.setChatID(rs.getInt("chatID"));
				chat.setChatName(rs.getString("chatName"));
				*chat.setChatContent(rs.getString("chatContent").replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>"));
				
				*int chatTime=Integer.parseInt(rs.getString("chatTime").substring(11, 13));
				*String timeType="오전";
				*if(Integer.parseInt(rs.getString("chatTime").substring(11, 13)) >= 12) {
					timeType = "오후";
					chatTime -= 12;
				}
				
				*chat.setChatTime(rs.getString("chatTime").substring(0, 11) +  " " +timeType +  " " + chatTime + ":" + rs.getString("chatTime").substring(14, 16));
				
				*chatList.add(chat);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return chatList;
	}
	
	//
		public ArrayList<Chat> getChatListByResent(String chatID){
			ArrayList<Chat> chatList=null;
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			String sql="SELECT * FROM CHAT WHERE chatID > ? ORDER BY chatTime";
			try { 
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, Integer.parseInt(chatID));
				rs=pstmt.executeQuery();
				chatList=new ArrayList<Chat>();
				while(rs.next()) {
					Chat chat=new Chat();
					chat.setChatID(rs.getInt("chatID"));
					chat.setChatName(rs.getString("chatName"));
					*chat.setChatContent(rs.getString("chatContent").replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>"));
					
					*int chatTime=Integer.parseInt(rs.getString("chatTime").substring(11, 13));
					*String timeType="오전";
					*if(Integer.parseInt(rs.getString("chatTime").substring(11, 13)) >= 12) {
						timeType = "오후";
						chatTime -= 12;
					}
					
					*chat.setChatTime(rs.getString("chatTime").substring(0, 11) +  " " +timeType +  " " + chatTime + ":" + rs.getString("chatTime").substring(14, 16));
					
					*chatList.add(chat);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}finally {
				try {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			return chatList;
		}
	
	//
		public int submit(String chatName, String chatContent){
				ArrayList<Chat> chatList = null;
				PreparedStatement pstmt = null;
				ResultSet rs = null;
				String SQL = "INSERT INTO CHAT VALUES (chat_chatID_SEQ.nextval, ?, ?, to_char(sysdate, 'yyyy.mm.dd hh24:mi'))";
				try {
					pstmt = conn.prepareStatement(SQL);
					pstmt.setString(1, chatName);
					pstmt.setString(2, chatContent);
					return pstmt.executeUpdate();
				}catch (Exception e) {
					e.printStackTrace();
				}finally {
					try {
						if(rs != null)rs.close();
						if(pstmt != null)pstmt.close();
					}catch(Exception e) {
						e.printStackTrace();
					}
				}
				return -1; 
		 }
		 */
	
	
	
}
	