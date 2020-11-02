package com.itwill.gukbap.service;

import java.util.List;

import com.itwill.gukbap.domain.AddressDomain;
import com.itwill.gukbap.domain.UserDomain;
import com.itwill.gukbap.exception.ExistedUserExecption;

public interface UserService {

	public int registerNewUser(UserDomain user, AddressDomain address) throws ExistedUserExecption;

	public UserDomain login(String user_id, String password) throws Exception;

	public List<UserDomain> selectAll();

	public UserDomain selectUserById(String user_id);

	public int updateUserInfo(UserDomain user);

	public void deleteUser(String user_id);

}