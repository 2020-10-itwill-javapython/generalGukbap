package com.itwill.gukbap.repository;

import java.util.List;

import com.itwill.gukbap.domain.AddressDomain;

public interface AddressRepository {
	
	public List<AddressDomain> selectAll();
	
	public AddressDomain selectAddressByNo(int address_no);
	
	public int deleteAddress(int address_no);
	
	public int insertAddress(AddressDomain address);

	public int updateAddress(AddressDomain address);

	public int selectCurrentNo();

}
