package com.itwill.gukbap.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.gukbap.domain.AddressDomain;
import com.itwill.gukbap.repository.AddressRepository;

@Service
public class AddressServiceImpl implements  AddressService {
	
	@Autowired
	private AddressRepository addressRepository;
	
	
	@Override
	public List<AddressDomain> selectAll() {
		return addressRepository.selectAll();
	}
	

	@Override
	public AddressDomain selectAddressByNo(int address_no) {
		return addressRepository.selectAddressByNo(address_no);
	}
	

	@Override
	public int insertAddress(AddressDomain address) {
		return addressRepository.insertAddress(address);
	}
	

	@Override
	public int updateAddress(AddressDomain address) {
		return addressRepository.updateAddress(address);
	}
	
	
	
	@Override
	public int deleteAddress(int address_no) {
		return addressRepository.deleteAddress(address_no);
	}    

}
