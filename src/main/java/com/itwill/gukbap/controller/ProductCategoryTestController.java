package com.itwill.gukbap.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.gukbap.domain.AddressDomain;
import com.itwill.gukbap.domain.ProductCategoryDomain;
import com.itwill.gukbap.service.AddressService;
import com.itwill.gukbap.service.ProductCategoryService;




@Controller
public class ProductCategoryTestController {
	@Autowired
	private  ProductCategoryService productCategoryService;
	
	@RequestMapping("productCategory_list")
	public String address_list(HttpServletRequest request) {
		List<ProductCategoryDomain> productCategoryList= productCategoryService.selectAll();
		request.setAttribute("productCategoryList",productCategoryList);
		return "productCategory_test";
	}
}
