package com.itwill.gukbap.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.lang.UsesSunHttpServer;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.itwill.gukbap.domain.AddressDomain;
import com.itwill.gukbap.domain.OrderDomain;
import com.itwill.gukbap.domain.ProductDomain;
import com.itwill.gukbap.domain.ReviewDomain;
import com.itwill.gukbap.domain.UserAddressDomain;
import com.itwill.gukbap.domain.UserDomain;
import com.itwill.gukbap.exception.ExistedUserExecption;
import com.itwill.gukbap.service.AddressService;
import com.itwill.gukbap.service.OrderService;
import com.itwill.gukbap.service.ProductService;
import com.itwill.gukbap.service.ReviewService;
import com.itwill.gukbap.service.UserService;

@Controller
public class GukbapController {
	@Autowired
	UserService userService;
	@Autowired
	OrderService orderService;
	@Autowired
	AddressService addressService;
	@Autowired
	ReviewService reviewService;
	@Autowired
	ProductService productService;
	
	@RequestMapping(value = "write_reply", 
					method = RequestMethod.POST)
	public String write_reply(@ModelAttribute ReviewDomain reply, HttpServletRequest request) {
		reviewService.insert_replay(reply);
		this.blog_details(String.valueOf(reply.getReview_no()), request);
		return "redirect:/blog_details?review_no=" + reply.getReview_no();
	}
	
	@RequestMapping(value = "update_address_info",
					method = RequestMethod.POST)
	public String update_address_info(@ModelAttribute AddressDomain address) {
		addressService.updateAddress(address);
		return "redirect:/my-account";
	}
	
	@RequestMapping(value = "logout_action")
	public String logout_action(HttpSession session) {
		session.invalidate();
		return "redirect:/gukbap_main";
	}
	
	@RequestMapping(value = "register_user", 
					method = RequestMethod.POST)
	public String register_user(@ModelAttribute UserDomain user, @ModelAttribute AddressDomain address) {
		String result = "";
		try {
			userService.registerNewUser(user, address);
			result = "redirect:/login";
		} catch (ExistedUserExecption e) {
			e.printStackTrace();
			result = "redirect:/error";
		}
		return result;
	}
	
	@RequestMapping("/")
	public String gukbap_main() {
		return "gukbap_main";
	}
	@RequestMapping("/about")
	public String about() {
		return "about";
	}
	
	@RequestMapping("/wishlist")
	public String wishlist() {
		return "wishlist";
	}
	@RequestMapping("/contact")
	public String contact() {
		return "contact";
	}
	@RequestMapping("/services")
	public String services() {
		return "services";
	}
	
	@RequestMapping("/blog_sidebar")
	public String blog_sidebar(HttpServletRequest request) {
		List<ReviewDomain> reviews = reviewService.selectAllReview();
		List<ReviewDomain> latestReviews = reviewService.selectAllReviewArrangeInTheLatestReview();
		
		Map<Integer, Object> reviewed_products = new HashMap<Integer, Object>();
		for (ReviewDomain review : reviews) {
			reviewed_products.put(review.getReview_no(), 
					productService.selectProductByProductNo(review.getProduct_no()));
		}
		
		List<ReviewDomain> latest_replies = reviewService.select_latest_reviews();
 		
		request.setAttribute("reviews", reviews);
		request.setAttribute("latestReviews", latestReviews);
		request.setAttribute("reviewed_products", reviewed_products);
		request.setAttribute("latest_replies", latest_replies);
		return "blog_sidebar";
	}
	
	@RequestMapping("/blog_details")
	public String blog_details(@RequestParam String review_no, HttpServletRequest request) {
		ReviewDomain detailed_review =  reviewService.selectReviewByReviewNo(new Integer(review_no));
		
		List<ReviewDomain> review_with_replies = 
				reviewService.review_and_replies(detailed_review.getReview_group_no());
		
		UserDomain user = this.get_user_info_from_review(review_with_replies.get(0));
		ProductDomain product = productService.selectProductByProductNo(review_with_replies.get(0).getProduct_no());
		List<ReviewDomain> related_reviews = 
				reviewService.selectReviewByProductNo(
						detailed_review.getProduct_no());
		
		request.setAttribute("review_with_replies", review_with_replies);
		request.setAttribute("reviewed_user", user);
		request.setAttribute("product_info", product);
		request.setAttribute("related_reviews", related_reviews);
		return "blog_details";
	}
	
	@RequestMapping("/checkout")
	public String checkout() {
		return "checkout";
	}
	@RequestMapping("/chat")
	public String chat() {
		return "chat";
	}
	@RequestMapping("/error")
	public String error() {
		return "error";
	}
	
	@RequestMapping("/register")
	public String register() {
		return "register";
	}
	
	@RequestMapping("/write_review_page")
	public String write_review_page() {
		return "write_review_page";
	}

	@RequestMapping(value = "my-account")
	public String myAccount(HttpSession session) {
		String user_id = GukbapController.get_user_id_from_session(session);
		List<AddressDomain> addresses = addressService.select_addresses_by_id(user_id);
		List<OrderDomain> orders = orderService.selectOrdersByName(user_id);
		session.setAttribute("addresses", addresses);
		session.setAttribute("orders", orders);
		return "my-account";
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
			result = "redirect:/gukbap_main";
		} catch (Exception e) {
			session.setAttribute("msg", e.getMessage());
			session.setAttribute("user_id", user_id);
			result = "redirect:/login";
			e.printStackTrace();
		}
		return result;
	}

	//------------------------------------------------------
	protected static String get_user_id_from_session(HttpSession session) {
		UserDomain user = (UserDomain) session.getAttribute("loginUser");
		return user.getUser_id();
	}
	
	private UserDomain get_user_info_from_review(ReviewDomain review) {
		OrderDomain order = orderService.selectOrderBy_o_d_no(review.getO_d_no());
		UserDomain user = userService.selectUserById(order.getUser_id());
		return user;
	}
	
}
