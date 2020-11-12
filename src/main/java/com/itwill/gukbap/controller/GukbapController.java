package com.itwill.gukbap.controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.UsesSunHttpServer;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.gukbap.domain.AddressDomain;
import com.itwill.gukbap.domain.OrderDomain;
import com.itwill.gukbap.domain.UserAddressDomain;
import com.itwill.gukbap.domain.UserDomain;
import com.itwill.gukbap.exception.ExistedUserExecption;
import com.itwill.gukbap.service.AddressService;
import com.itwill.gukbap.service.OrderService;
import com.itwill.gukbap.service.UserService;

@Controller
public class GukbapController {
	@Autowired
	UserService userService;
	@Autowired
	OrderService orderService;
	@Autowired
	AddressService addressService;
	
	@RequestMapping(value = "update_address_info",
					method = RequestMethod.POST)
	public String update_address_info(@ModelAttribute AddressDomain address) {
		addressService.updateAddress(address);
		return "redirect:/my-account";
	}
	
	@RequestMapping(value = "logout_action")
	public String logout_action(HttpSession session) {
		session.invalidate();
		return "redirect:/index.jsp";
	}
	
	@RequestMapping(value = "register_user", 
					method = RequestMethod.POST)
	public String register_user(@ModelAttribute UserDomain user, @ModelAttribute AddressDomain address) {
		String result = "";
		try {
			userService.registerNewUser(user, address);
			result = "redirect:/login.jsp";
		} catch (ExistedUserExecption e) {
			e.printStackTrace();
			result = "redirect:/404.jsp";
		}
		return result;
	}
	
	@RequestMapping("/")
	public String gukbap_main() {
		return "gukbap_main";
	}

	@RequestMapping(value = "my-account")
	public String myAccount(HttpSession session) {
		String user_id = this.get_user_id_from_session(session);
		List<AddressDomain> addresses = addressService.select_addresses_by_id(user_id);
		List<OrderDomain> orders = orderService.selectOrdersByName(user_id);
		session.setAttribute("addresses", addresses);
		session.setAttribute("orders", orders);
		return "forward:/my-account.jsp";
	}
	
	@RequestMapping(value = "login_action", 
			method = RequestMethod.GET)
	public String loginByGET() {
		return "redirect:/index.jsp";
	}
	
	@RequestMapping(value = "login_action", 
					method = RequestMethod.POST)
	public String loginByPOST(@RequestParam String user_id, 
						@RequestParam String password,
						HttpSession session,
						@RequestParam(defaultValue = "false") boolean save_id_check,
						HttpServletResponse response) {
		String result = "";
		
		
		try {
			UserDomain loginUser = userService.login(user_id, password);
			session.setAttribute("loginUser", loginUser);
			if (save_id_check) {
				response.addCookie(new Cookie("saved_id", user_id));
			}
			result = "forward:/index.jsp";
		} catch (Exception e) {
			session.setAttribute("msg", e.getMessage());
			session.setAttribute("user_id", user_id);
			result = "forward:/login.jsp";
			e.printStackTrace();
		}
		return result;
	}
	
	protected static String get_user_id_from_session(HttpSession session) {
		UserDomain user = (UserDomain) session.getAttribute("loginUser");
		return user.getUser_id();
	}
	
}
