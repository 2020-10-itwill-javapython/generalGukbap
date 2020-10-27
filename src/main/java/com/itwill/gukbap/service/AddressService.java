package com.itwill.gukbap.service;

import java.util.List;

import com.itwill.gukbap.domain.AddressDomain;

public interface AddressService {

	List<AddressDomain> selectAll();

	AddressDomain selectAddressByNo(int address_no);

	int insertAddress(AddressDomain address);

	int updateAddress(AddressDomain address);

	int deleteAddress(int address_no, String user_id);

}
