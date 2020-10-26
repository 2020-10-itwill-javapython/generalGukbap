package com.itwill.gukbap.mapper;

import com.itwill.gukbap.domain.UserAddressDomain;

public interface UserAddressMapper {
	public int user_address_mapping(UserAddressDomain userAddressDomain);
	
	public int deleteUserAddress(UserAddressDomain userAddressDomain);
	
	public int deleteAllUserAddress(String user_id);
}
