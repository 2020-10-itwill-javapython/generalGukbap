package com.itwill.gukbap.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwill.gukbap.domain.AddressDomain;
import com.itwill.gukbap.domain.OrderDetailDomain;
import com.itwill.gukbap.domain.OrderDomain;
import com.itwill.gukbap.domain.ProductCategoryDomain;
import com.itwill.gukbap.domain.ProductDomain;
import com.itwill.gukbap.domain.ReviewDomain;
import com.itwill.gukbap.domain.UserDomain;
import com.itwill.gukbap.domain.WishListDomain;
import com.itwill.gukbap.service.AddressService;
import com.itwill.gukbap.service.OrderService;
import com.itwill.gukbap.service.ProductCategoryService;
import com.itwill.gukbap.service.ProductService;
import com.itwill.gukbap.service.ReviewService;
import com.itwill.gukbap.service.UserService;
import com.itwill.gukbap.service.WishListService;

@Controller
public class TestController {
	
	
	@Autowired
	private AddressService addressService;
	@Autowired
	private OrderService orderService;
	@Autowired
	private  ProductCategoryService productCategoryService;
	@Autowired
	private ProductService productService;
	@Autowired
	private UserService userService;
	@Autowired
	private WishListService wishListService;
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping("address_list")
	public String address_list(HttpServletRequest request) {
		List<AddressDomain> addressList=addressService.selectAll();
		request.setAttribute("addressList",addressList);
		return "address_test";
	}
	@RequestMapping("order_list")
	public String order_list(HttpServletRequest request) {
		List<OrderDomain> orderList=orderService.selectOrdersByName("helprun@naver.com");
		request.setAttribute("orderList",orderList);
		return "order_test";
	}
	@RequestMapping("productCategory_list")
	public String productCategory_list(HttpServletRequest request) {
		List<ProductCategoryDomain> productCategoryList= productCategoryService.selectAll();
		request.setAttribute("productCategoryList",productCategoryList);
		return "productCategory_test";
	}

	
	/********************************************************************/

	@RequestMapping("shop-right-sidebar")  
	public String product_list(HttpServletRequest request) {
		List<ProductDomain> productList=productService.selectAll();
		request.setAttribute("productList",productList);
		return "shop-right-sidebar";
	}
	@RequestMapping("gukbap_main")  
	public String index_product_list(HttpServletRequest request) {
		List<ProductDomain> indexProductList=productService.selectProductByCategoryNo(1);
		request.setAttribute("indexProductList", indexProductList);
		List<ProductDomain> indexCountList=productService.selectProductOrderByClickCount();
		request.setAttribute("indexCountList", indexCountList);
		List<ReviewDomain> indexReviewList=reviewService.selectAllReviewArrangeInTheLatestFive();
		request.setAttribute("indexReviewList", indexReviewList);
		return "gukbap_main";
	}
	
	
	@RequestMapping("f_product_list")  
	public String f_product_list(@RequestParam int c_no,HttpServletRequest request) {
		List<ProductDomain> productList=productService.selectProductByCategoryNo(c_no);
		//request.setAttribute("productList",productList);
		request.setAttribute("productList",productList);
		return "f_product_list";
	}
	/*
	@RequestMapping(value = "add_to_cart",method = RequestMethod.GET)
	private String get_product_GET(HttpServletRequest request,HttpServletResponse response,@RequestParam String product_no)throws Exception {
		return "redirect:/cart";
	}
	*/
	
	@RequestMapping(value = "add_to_cart",method = RequestMethod.POST)
	private String add_to_cart(HttpServletRequest request,@RequestParam String product_no,@RequestParam String pty) {
		ProductDomain product=productService.selectProductByProductNo(Integer.parseInt(product_no));
		//UserDomain user = (UserDomain) request.getSession().getAttribute("loginUser");
		//user.getUser_id()
//		orderService.insertOrder(
//		"big-test@naver.com", 
//		new OrderDetailDomain(0, 20, 1, productService.selectProductByProductNo(2)));
		orderService.insertOrder("helprun@naver.com",new OrderDetailDomain(0,0,1,product));
		return "cart";
	}
	
	
	
	@RequestMapping(value = "add_wishlist",method = RequestMethod.POST)
	private String add_wishlist(@RequestParam String product_no,HttpServletRequest request) {
		//UserDomain user = (UserDomain) request.getSession().getAttribute("loginUser");
		//String user_id=user.getUser_id();	
		wishListService.addToWishList("helprun@naver.com",Integer.parseInt(product_no));
		return "wishlist";
	}


	/********************************************************************/
	
	@RequestMapping("guest_list")
	public String guest_list(HttpServletRequest request) {
		UserDomain user = userService.selectUserById("helprun@naver.com");
		request.setAttribute("user", user);
		return "user_test";
	}
	
	@RequestMapping("wish_list")
	public String wishList_list(HttpServletRequest request) {
		List<WishListDomain> wishList=wishListService.getWishListItems("helprun@naver.com");
		request.setAttribute("wishList",wishList);
		return "wish_test";
	}
	
	
	
	
	
	

}
