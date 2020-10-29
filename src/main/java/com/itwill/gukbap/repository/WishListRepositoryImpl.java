package com.itwill.gukbap.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

	@Override
	public int clearWishList(String user_id) {
		return wishListMapper.clearWishList(user_id);
	}

	@Override
	public int removeItemFromWishList(WishListDomain wishListDomain) {
		return wishListMapper.removeItemFromWishList(this.convertDomainIntoMap(wishListDomain));
	}

	@Override
	public int insertItemIntoWishList(WishListDomain wishListDomain) {
		return wishListMapper.insertItemIntoWishList(this.convertDomainIntoMap(wishListDomain));
	}
	
	public Map<String, Object> convertDomainIntoMap(WishListDomain wishListDomain) {
		Map<String, Object> wishListMap = new HashMap();
		wishListMap.put("user_id", wishListDomain.getUser_id());
		wishListMap.put("product_no", wishListDomain.getProduct().getProduct_no());
		return wishListMap;
	}
}
