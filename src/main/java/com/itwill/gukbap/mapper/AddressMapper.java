package com.itwill.gukbap.mapper;

import java.util.List;

import com.itwill.gukbap.domain.AddressDomain;



public interface AddressMapper {
	
	public List<AddressDomain> selectAll();

	public AddressDomain selectAddressByNo(int address_no);
	
	public int insertAddress(AddressDomain address);

	public int deleteAddress(int address_no);

	public int updateAddress(AddressDomain address);

}
