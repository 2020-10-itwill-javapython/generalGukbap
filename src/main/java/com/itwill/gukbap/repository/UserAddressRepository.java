package com.itwill.gukbap.repository;

import com.itwill.gukbap.domain.UserAddressDomain;

public interface UserAddressRepository {

	public int map_user_with_address(UserAddressDomain userAddressDomain);
	
	public int delete_single_userAddress(UserAddressDomain userAddressDomain);
	
	public int delete_all_address(String user_id);
	
}