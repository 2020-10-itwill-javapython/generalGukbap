package com.itwill.gukbap.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.gukbap.domain.UserDomain;
import com.itwill.gukbap.service.UserService;

@Controller
public class UserTestController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("guest_list")
	public String guest_list(HttpServletRequest request) {
		UserDomain user = userService.selectUserById("helprun@naver.com");
		request.setAttribute("user", user);
		return "user_test";
	}
}
