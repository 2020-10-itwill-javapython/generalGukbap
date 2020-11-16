package com.itwill.gukbap.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.gukbap.domain.AddressDomain;
import com.itwill.gukbap.domain.OrderDetailDomain;
import com.itwill.gukbap.domain.OrderDomain;
import com.itwill.gukbap.domain.ProductDomain;
import com.itwill.gukbap.domain.ReviewDomain;
import com.itwill.gukbap.domain.UserDomain;
import com.itwill.gukbap.domain.WishListDomain;
import com.itwill.gukbap.exception.ExistedUserExecption;
import com.itwill.gukbap.service.AddressService;
import com.itwill.gukbap.service.OrderDetailService;
import com.itwill.gukbap.service.OrderService;
import com.itwill.gukbap.service.ProductCategoryService;
import com.itwill.gukbap.service.ProductService;
import com.itwill.gukbap.service.ReviewService;
import com.itwill.gukbap.service.UserService;
import com.itwill.gukbap.service.WishListService;

@Controller
public class GukbapController {
	@Autowired
	private AddressService addressService;
	@Autowired
	private OrderService orderService;
	@Autowired
	private ProductCategoryService productCategoryService;
	@Autowired
	private ProductService productService;
	@Autowired
	private UserService userService;
	@Autowired
	private WishListService wishListService;
	@Autowired
	private ReviewService reviewService;
	@Autowired
	private OrderDetailService orderDetailService;
	
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
	
	/************************** 김미영 ********************************/
	@RequestMapping("gukbap_main")  
	public String index_product_list(HttpServletRequest request) {
		List<ProductDomain> indexProductList=productService.selectProductByCategoryNo(1);
		request.setAttribute("indexProductList", indexProductList);
		//메인 첫번째 단 대표메뉴
		List<ProductDomain> indexCountList=productService.selectProductOrderByClickCount();
		request.setAttribute("indexCountList", indexCountList);
		//메인 두번째 단 클릭 수 많은 메뉴
		List<ReviewDomain> indexReviewList=reviewService.selectAllReviewArrangeInTheLatestFive();
		request.setAttribute("indexReviewList", indexReviewList);
		return "gukbap_main";
		//메인 세번째 단 최근 후기
	}
	@RequestMapping(value="wishlist", method=RequestMethod.GET)
	public String show_wishlist(HttpServletRequest request) {

		//위시리스트에 담은 내역 보여주기
		UserDomain user = (UserDomain) request.getSession().getAttribute("loginUser");

		List<WishListDomain> wishlist=wishListService.getWishListItems(user.getUser_id());
		request.setAttribute("wishlist", wishlist);
		return "wishlist";
		
	}
	
	@RequestMapping(value = "wishlist_to_cart",method = RequestMethod.POST)
	private String wishlist_to_cart(@RequestParam String product_no, @RequestParam String pty, HttpServletRequest request) {
		//위시리스트에 있는 메뉴 카트에 담기
		UserDomain user = (UserDomain) request.getSession().getAttribute("loginUser");
		ProductDomain product=productService.selectProductByProductNo(Integer.parseInt(product_no));
		orderService.insertOrder(user.getUser_id(), new OrderDetailDomain(0,0,Integer.parseInt(pty),product));
		return "wishlist";
	}

	@RequestMapping("f_wishlist")  
	public String f_wishlist(@RequestParam String wishlist_no, HttpServletRequest request) {
		//위시리스트에 있는 제품 하나 삭제하기
		UserDomain user = (UserDomain) request.getSession().getAttribute("loginUser");
		List<WishListDomain> wishlist=wishListService.getWishListItems(user.getUser_id());
		wishListService.removeItemFromWishList(Integer.parseInt(wishlist_no));
		request.setAttribute("wishlist",wishlist);
		return "f_wishlist";
	}
	
	/************************** 끝 ********************************/
	

	@RequestMapping("shop-right-sidebar")  
	public String product_list(HttpServletRequest request) {
		List<ProductDomain> productList=productService.selectAll();
		request.setAttribute("productList",productList);
		return "shop-right-sidebar";
	}
	
	@RequestMapping("cart")
	public String cart(HttpServletRequest request) {
		if((UserDomain) request.getSession().getAttribute("loginUser")!=null) {
			
			UserDomain user = (UserDomain) request.getSession().getAttribute("loginUser");
			//UserDomain user=userService.selectUserById("jaeil@naver.com");
			 int order_no=orderService.highOrderNo(user.getUser_id());			 
		        if(orderService.selectOrderByNo(order_no)!=null) {
		        	OrderDomain order= orderService.selectOrderByNo(order_no);
		        	List<OrderDetailDomain> orderDetailList= order.getOrderDetailList();
		        	request.setAttribute("orderDetailList",orderDetailList);
		        	request.setAttribute("order",order);	
		        }			        
				return "cart";
		}else {
			return "login";
		}		          
	}
	
	@RequestMapping("cart_delete")
	public String cart_delete(@RequestParam String o_d_no,HttpServletRequest request) {
		if(orderDetailService.selectOrderDetailByO_d_no(Integer.parseInt(o_d_no))!=null) {
			OrderDetailDomain orderDetail= orderDetailService.selectOrderDetailByO_d_no(Integer.parseInt(o_d_no));		
			orderDetailService.deleteOrderDetail(orderDetail);	
		}
		UserDomain user = (UserDomain) request.getSession().getAttribute("loginUser");
		//UserDomain user=userService.selectUserById("jaeil@naver.com");
		 int order_no=orderService.highOrderNo(user.getUser_id());			 
	        if(orderService.selectOrderByNo(order_no)!=null) {
	        	OrderDomain order= orderService.selectOrderByNo(order_no);
	        	if(order.getOrderDetailList()!=null) {
	        		List<OrderDetailDomain> orderDetailList= order.getOrderDetailList();
		        	request.setAttribute("orderDetailList",orderDetailList);
		        	request.setAttribute("order",order);
	        	}
	        	
	        }	
		/*
		UserDomain user=userService.selectUserById("jaeil@naver.com");
		int order_no=orderService.highOrderNo(user.getUser_id());
		if(orderService.selectOrderByNo(order_no)!=null) {
	     OrderDomain order= orderService.selectOrderByNo(order_no);
		if(order.getOrderDetailList()!=null) {
		    	List<OrderDetailDomain> orderDetailList= order.getOrderDetailList();
				request.setAttribute("orderDetailList",orderDetailList);
		    }
      
		}
        */
		return "f_cart";
	}
	@RequestMapping("f_product_list")  
	public String f_product_list(@RequestParam int c_no,HttpServletRequest request) {
		List<ProductDomain> productList=productService.selectProductByCategoryNo(c_no);
		//request.setAttribute("productList",productList);
		request.setAttribute("productList",productList);
		return "f_product_list";
	}
	
	@RequestMapping(value = "add_to_cart",method = RequestMethod.POST)
	private String add_to_cart(HttpServletRequest request,@RequestParam String product_no,@RequestParam String pty,HttpServletResponse response)throws Exception {
		if((UserDomain) request.getSession().getAttribute("loginUser")!=null) {
		ProductDomain product=productService.selectProductByProductNo(Integer.parseInt(product_no));
		UserDomain user = (UserDomain) request.getSession().getAttribute("loginUser");
		orderService.insertOrder(user.getUser_id(),new OrderDetailDomain(0,0,Integer.parseInt(pty),product));
		response.sendRedirect("cart");
		}else {
			return "login";
		}
		return "cart";
		
		
	}
	
	@RequestMapping(value = "add_wishlist",method = RequestMethod.POST)
	private String add_wishlist(@RequestParam String product_no,HttpServletRequest request) {
		UserDomain user = (UserDomain) request.getSession().getAttribute("loginUser");
		//String user_id=user.getUser_id();	
		wishListService.addToWishList(user.getUser_id(),Integer.parseInt(product_no));
		return "wishlist";
	}
}
