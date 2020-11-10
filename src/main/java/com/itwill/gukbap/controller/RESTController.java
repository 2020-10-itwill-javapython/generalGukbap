package com.itwill.gukbap.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.gukbap.domain.ProductDomain;
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
	
	@RequestMapping(value = "prodcut_list",
			produces = "application/json;charset=UTF-8")
	public List<ProductDomain> prodcut_list(@RequestParam int c_no,HttpServletRequest request) {
		List<ProductDomain> productList=productService.selectProductByCategoryNo(c_no);
		//request.setAttribute("productList",productList);
		return productList;
	}
	
	

		
}
