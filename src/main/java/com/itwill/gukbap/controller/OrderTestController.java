package com.itwill.gukbap.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itwill.gukbap.domain.OrderDomain;
import com.itwill.gukbap.service.OrderService;




@Controller
public class OrderTestController {
	@Autowired
	private OrderService orderService;
	
	@RequestMapping("order_list")
	public String address_list(HttpServletRequest request) {
		List<OrderDomain> orderList=orderService.selectAll("helprun@naver.com");
		request.setAttribute("orderList",orderList);
		return "order_test";
	}
}
