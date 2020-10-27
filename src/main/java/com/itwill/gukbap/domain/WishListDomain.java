package com.itwill.gukbap.domain;

import java.util.List;

public class WishListDomain {
	private String wishlist_no;
	private String user_id;
	private ProductDomain product;
	
	public WishListDomain() {
	}

	public WishListDomain(String wishlist_no, String user_id, ProductDomain product) {
		super();
		this.wishlist_no = wishlist_no;
		this.user_id = user_id;
		this.product = product;
	}

	public String getWishlist_no() {
		return wishlist_no;
	}

	public void setWishlist_no(String wishlist_no) {
		this.wishlist_no = wishlist_no;
	}

	public ProductDomain getProduct() {
		return product;
	}

	public void setProduct(ProductDomain product) {
		this.product = product;
	}
	
	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	@Override
	public String toString() {
		return "WishListDomain [wishlist_no=" + wishlist_no + ", user_id=" + user_id + ", product=" + product + "]\n";
	}

	
	
}
