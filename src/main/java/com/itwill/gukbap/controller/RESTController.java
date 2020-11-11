package com.itwill.gukbap.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.gukbap.domain.AddressDomain;
import com.itwill.gukbap.domain.OrderDomain;
import com.itwill.gukbap.domain.UserDomain;
import com.itwill.gukbap.service.AddressService;
import com.itwill.gukbap.service.OrderService;
import com.itwill.gukbap.service.UserService;

@RestController
public class RESTController {
	@Autowired
	UserService userService;
	@Autowired
	OrderService orderService;
	@Autowired
	AddressService addressService;
	
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
