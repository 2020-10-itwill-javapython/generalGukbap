package com.itwill.gukbap.mapper;

import java.util.List;
import java.util.Map;

import com.itwill.gukbap.domain.WishListDomain;

public interface WishListMapper {
	
	public List<WishListDomain> selectWishListById(String user_id);
	
	public WishListDomain selectItemByWishListNo(int wishilist_no);
	
	public int clearWishList(String user_id);
	
	public int removeItemFromWishList(int wishilist_no);
	
	public int insertItemIntoWishList(Map<String, Object> wishListProperty);
	
}
