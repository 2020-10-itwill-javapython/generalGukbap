package com.itwill.gukbap.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.gukbap.domain.UserDomain;
import com.itwill.gukbap.mapper.UserMapper;

@Repository
public class UserRepositoryImpl implements UserRepository {
	@Autowired
	UserMapper userMapper;
	

	@Override
	public int insertUser(UserDomain user) {
		return userMapper.insertUser(user);
	}

	@Override
	public List<UserDomain> selectAll() {
		return userMapper.selectAll();
	}

	@Override
	public UserDomain selectUserById(String user_id) {
		return userMapper.selectUserById(user_id);
	}

	@Override
	public boolean isExistedUser(String user_id) {
		boolean isExist = false;
		int userCount = userMapper.isExistedUser(user_id);
		if (userCount == 1) {
			isExist = true;
		}
		return isExist;
	}
	
	@Override
	public int updateUser(UserDomain user) {
		return userMapper.updateUser(user);
	}

	@Override
	public int deleteUser(String user_id) {
		return userMapper.deleteUser(user_id);
	}


}
