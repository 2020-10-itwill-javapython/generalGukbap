package com.itwill.gukbap.repository;

import java.util.List;

import com.itwill.gukbap.domain.WishListDomain;

public interface WishListRepository {

	public List<WishListDomain> selectWishList(String user_id);

}