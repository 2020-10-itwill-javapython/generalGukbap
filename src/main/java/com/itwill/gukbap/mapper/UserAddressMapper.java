package com.itwill.gukbap.mapper;

import java.util.List;

import com.itwill.gukbap.domain.AddressDomain;
import com.itwill.gukbap.domain.UserAddressDomain;

public interface UserAddressMapper {
	public int user_address_mapping(UserAddressDomain userAddressDomain);
	
	public int deleteUserAddress(UserAddressDomain userAddressDomain);
	
	public int deleteAllUserAddress(String user_id);
	
	public List<AddressDomain> select_addresses_by_id(String user_id);
}
