package com.itwill.gukbap.repository;

import java.util.List;

import com.itwill.gukbap.domain.UserDomain;

public interface UserRepository {
	
	public int insertUser(UserDomain user);
	
	public List<UserDomain> selectAll();
	public UserDomain selectUserById(String user_id);
	
	public boolean isExistedUser(String user_id);
	
	public int updateUser(UserDomain user);
	
	public int deleteUser(String user_id);
}
