package com.itwill.gukbap.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.gukbap.domain.AddressDomain;
import com.itwill.gukbap.service.AddressService;




@Controller
public class AddressTestController {
	@Autowired
	private AddressService addressService;
	
	@RequestMapping("address_list")
	public String address_list(HttpServletRequest request) {
		List<AddressDomain> addressList=addressService.selectAll();
		request.setAttribute("addressList",addressList);
		return "address_test";
	}
}
