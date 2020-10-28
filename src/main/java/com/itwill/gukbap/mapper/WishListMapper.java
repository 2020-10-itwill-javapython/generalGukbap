package com.itwill.gukbap.mapper;

import java.util.List;
import java.util.Map;

import com.itwill.gukbap.domain.WishListDomain;

public interface WishListMapper {
	
	public List<WishListDomain> selectWishListById(String user_id);
	
	public int clearWishList(String user_id);
	
	public int removeItemFromWishList(Map<String, Object> user_id_product_no_to_delete );
	
	public int insertItemIntoWishList(Map<String, Object> wishListProperty);
	
}
