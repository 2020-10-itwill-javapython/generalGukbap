package com.itwill.gukbap.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.gukbap.domain.AddressDomain;
import com.itwill.gukbap.domain.WishListDomain;
import com.itwill.gukbap.service.AddressService;
import com.itwill.gukbap.service.WishListService;




@Controller
public class WishTestController {
	@Autowired
	private WishListService wishListService; 
	
	@RequestMapping("wish_list")
	public String address_list(HttpServletRequest request) {
		List<WishListDomain> wishList=wishListService.getWishListItems("helprun@naver.com");
		request.setAttribute("wishList",wishList);
		return "wish_test";
	}
}
