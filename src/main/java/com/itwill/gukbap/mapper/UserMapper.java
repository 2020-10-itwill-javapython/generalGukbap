package com.itwill.gukbap.mapper;

import java.util.List;

import com.itwill.gukbap.domain.UserDomain;

public interface UserMapper {
	public List<UserDomain> selectAll();
	
	public UserDomain selectUserById(String user_id);
	
	public int isExistedUser(String user_id);
	
	public int insertUser(UserDomain user);
	
	public int updateUser(UserDomain user);
	
	public int deleteUser(String user_id);
}
