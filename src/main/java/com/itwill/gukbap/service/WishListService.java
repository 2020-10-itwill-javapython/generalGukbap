package com.itwill.gukbap.service;

import java.util.List;

import com.itwill.gukbap.domain.WishListDomain;

public interface WishListService {

	public List<WishListDomain> getWishListItems(String user_id);
	
	public WishListDomain getItemByWishListNo(int wishilist_no);

	public int clearWishList(String user_id);

	public int removeItemFromWishList(int wishlist_no);

	public int addToWishList(String user_id, int product_no);

}