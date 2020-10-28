package com.itwill.gukbap.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.gukbap.domain.AddressDomain;
import com.itwill.gukbap.mapper.AddressMapper;


@Repository
public class AddressRepositoryImpl implements AddressRepository{
	
	@Autowired
	AddressMapper addressMapper;
	
	@Override
	public List<AddressDomain> selectAll() {
		return addressMapper.selectAll();
	}
	
	@Override
	public AddressDomain selectAddressByNo(int address_no) {
		return addressMapper.selectAddressByNo(address_no);
	}
	
	@Override
	public int insertAddress(AddressDomain address) {
		return addressMapper.insertAddress(address);
	}
	
	@Override
	public int updateAddress(AddressDomain address) {
		return addressMapper.updateAddress(address);
	}
	
	@Override
	public int deleteAddress(int address_no) {
		return addressMapper.deleteAddress(address_no);
	}

}
