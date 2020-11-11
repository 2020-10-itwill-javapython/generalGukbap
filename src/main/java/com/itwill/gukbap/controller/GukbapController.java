package com.itwill.gukbap.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.UsesSunHttpServer;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.gukbap.domain.OrderDomain;
import com.itwill.gukbap.domain.UserDomain;
import com.itwill.gukbap.service.OrderService;
import com.itwill.gukbap.service.UserService;

@Controller
public class GukbapController {
	@Autowired
	UserService userService;
	@Autowired
	OrderService orderService;
	
	@RequestMapping("/")
	public String gukbap_main() {
		return "gukbap_main";
	}
	@RequestMapping("/about")
	public String about() {
		return "about";
	}

	@RequestMapping(value = "my-account")
	public String myAccount(HttpSession session) {
		UserDomain loginUser = (UserDomain) session.getAttribute("loginUser");
		List<OrderDomain> orders = orderService.selectOrdersByName(loginUser.getUser_id());
		session.setAttribute("orders", orders);
		return "forward:/my-account.jsp";
	}
	
	@RequestMapping(value = "login_action", 
			method = RequestMethod.GET)
	public String loginByGET() {
		return "redirect:/gukbap_main";
	}
	
	@RequestMapping(value = "login_action", 
					method = RequestMethod.POST)
	public String loginByPOST(@RequestParam String user_id, 
						@RequestParam String password,
						HttpSession session) {
		String result = "";
		
		try {
			UserDomain loginUser = userService.login(user_id, password);
			session.setAttribute("loginUser", loginUser);
			result = "forward:/index.jsp";
		} catch (Exception e) {
			session.setAttribute("msg", e.getMessage());
			session.setAttribute("user_id", user_id);
			result = "forward:/login";
			e.printStackTrace();
		}
		return result;
	}
	
	
}
