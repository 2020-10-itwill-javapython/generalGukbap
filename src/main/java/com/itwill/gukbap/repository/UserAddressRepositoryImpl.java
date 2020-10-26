package com.itwill.gukbap.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.gukbap.domain.UserAddressDomain;
import com.itwill.gukbap.mapper.UserAddressMapper;

@Repository
public class UserAddressRepositoryImpl implements UserAddressRepository {
	
	@Autowired
	UserAddressMapper userAddressMapper;
	
	@Override
	public int map_user_with_address(UserAddressDomain userAddressDomain) {
		return userAddressMapper.user_address_mapping(userAddressDomain);
	}

	@Override
	public int delete_single_userAddress(UserAddressDomain userAddressDomain) {
		return userAddressMapper.deleteUserAddress(userAddressDomain);
	}

	@Override
	public int delete_all_address(String user_id) {
		return userAddressMapper.deleteAllUserAddress(user_id);
	}
}
