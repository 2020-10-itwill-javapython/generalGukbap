package com.itwill.gukbap.repository;

import java.util.List;

import com.itwill.gukbap.domain.WishListDomain;

public interface WishListRepository {

	public List<WishListDomain> selectWishList(String user_id);
	
	public WishListDomain selectItemByWishListNo(int wishilist_no);
	
	public int clearWishList(String user_id);
	
	public int removeItemFromWishList(int wishlist_no);
	
	public int insertItemIntoWishList(WishListDomain wishListDomain);
}