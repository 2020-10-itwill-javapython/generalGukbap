package com.itwill.gukbap.service;

import java.util.List;

import com.itwill.gukbap.domain.UserDomain;
import com.itwill.gukbap.exception.ExistedUserExecption;

public interface UserService {

	int registerNewUser(UserDomain user) throws ExistedUserExecption;

	UserDomain login(String user_id, String password) throws Exception;

	List<UserDomain> selectAll();

	UserDomain selectUserById(String user_id);

	int updateUserInfo(UserDomain user);

	int deleteUser(String user_id);

}