package com.itwill.gukbap.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.gukbap.domain.WishListDomain;
import com.itwill.gukbap.mapper.WishListMapper;

@Repository
public class WishListRepositoryImpl implements WishListRepository {
	
	@Autowired
	private WishListMapper wishListMapper;
	
	@Override
	public List<WishListDomain> selectWishList(String user_id) {
		return wishListMapper.selectWishListById(user_id);
	}
}
