package com.itwill.gukbap.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.gukbap.domain.ProductDomain;
import com.itwill.gukbap.domain.UserDomain;
import com.itwill.gukbap.service.ProductService;
import com.itwill.gukbap.service.UserService;

@RestController
public class RESTController {
	@Autowired
	UserService userService;
	@Autowired
	ProductService productService;
	
	@RequestMapping(value = "modal_prodcut_detail",
					produces = "application/json;charset=UTF-8")
	public ProductDomain get_product_detail(@RequestParam String product_no) {
		ProductDomain product = productService.selectProductByProductNo(Integer.parseInt(product_no));
		return product;
	}
	
		
}
