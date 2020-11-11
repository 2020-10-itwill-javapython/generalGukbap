package com.itwill.gukbap.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.gukbap.domain.OrderDetailDomain;
import com.itwill.gukbap.domain.ProductDomain;
import com.itwill.gukbap.domain.UserDomain;
import com.itwill.gukbap.service.AddressService;
import com.itwill.gukbap.service.OrderService;
import com.itwill.gukbap.service.ProductService;
import com.itwill.gukbap.service.UserService;

@RestController
public class RESTController {
	
	@Autowired
	UserService userService;
	@Autowired
	ProductService productService;
	@Autowired
	OrderService orderService;
	@Autowired
	AddressService addressService;

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
	

		

	@RequestMapping(value = "update_user_info",
					method = RequestMethod.POST)
	public void update_user_info(@ModelAttribute UserDomain update_user, HttpSession session) {
		userService.updateUserInfo(update_user);
		UserDomain user = userService.selectUserById(update_user.getUser_id());
		session.setAttribute("loginUser", user);
		
	}
	
	@RequestMapping(value = "user_existed_id_check", 
					method = RequestMethod.POST,
					produces = "text/plain;charset=UTF-8")
	public String user_exist_check(@RequestParam String user_id) {
		String isExist = "false";
		UserDomain user = userService.selectUserById(user_id);
		if (user == null) {
			isExist = "true";
		}
		return isExist;
	}

}
