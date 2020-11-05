package com.itwill.gukbap.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.itwill.gukbap.domain.UserDomain;
import com.itwill.gukbap.service.UserService;

@RestController
public class RESTController {
	@Autowired
	UserService userService;

	
}
