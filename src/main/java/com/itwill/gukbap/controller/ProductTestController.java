package com.itwill.gukbap.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.gukbap.domain.AddressDomain;
import com.itwill.gukbap.domain.ProductDomain;
import com.itwill.gukbap.service.AddressService;
import com.itwill.gukbap.service.ProductService;




@Controller
public class ProductTestController {
	@Autowired
	private ProductService productService;
	
	@RequestMapping("product_list")
	public String address_list(HttpServletRequest request) {
		List<ProductDomain> productList=productService.selectAll();
		request.setAttribute("productList",productList);
		return "product_test";
	}
}
