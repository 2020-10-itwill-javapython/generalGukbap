package com.itwill.gukbap.mapper;

import java.util.List;

import com.itwill.gukbap.domain.WishListDomain;

public interface WishListMapper {
	
	public List<WishListDomain> selectWishListById(String user_id);
	
}
