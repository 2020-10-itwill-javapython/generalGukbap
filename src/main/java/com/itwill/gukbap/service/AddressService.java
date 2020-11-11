package com.itwill.gukbap.service;

import java.util.List;

import com.itwill.gukbap.domain.AddressDomain;
import com.itwill.gukbap.domain.UserAddressDomain;

public interface AddressService {

	public List<AddressDomain> selectAll();

	public AddressDomain selectAddressByNo(int address_no);

	public int insertAddress(AddressDomain address, UserAddressDomain userAddressDomain);

	public int updateAddress(AddressDomain address);

	public int deleteAddress(int address_no, String user_id);
	
	public List<AddressDomain> select_addresses_by_id(String user_id);
}
