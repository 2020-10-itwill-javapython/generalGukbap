package com.itwill.gukbap.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.gukbap.domain.WishListDomain;
import com.itwill.gukbap.repository.ProductRepository;
import com.itwill.gukbap.repository.WishListRepository;

@Service
public class WishListServiceImpl implements WishListService {
	@Autowired
	private WishListRepository wishListRepository;
	@Autowired
	private ProductRepository productRepository;
	
	@Override
	public List<WishListDomain> getWishListItems(String user_id) {
		return wishListRepository.selectWishList(user_id);
	}
	
	@Override
	public int clearWishList(String user_id) {
		return wishListRepository.clearWishList(user_id);
	}
	
	@Override
	public int removeItemFromWishList(String user_id, int product_no) {
		return wishListRepository.
				removeItemFromWishList(
						new WishListDomain(0, 
										   user_id, 
										   productRepository.selectProductByProductNo(product_no)));
	}
	
	@Override
	public int addToWishList(String user_id, int product_no) {
		return wishListRepository.
				insertItemIntoWishList(
						new WishListDomain(0, 
										   user_id, 
										   productRepository.selectProductByProductNo(product_no)));
	}
}
