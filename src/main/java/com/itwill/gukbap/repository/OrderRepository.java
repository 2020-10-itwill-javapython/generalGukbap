package com.itwill.gukbap.repository;

import java.util.List;

import com.itwill.gukbap.domain.OrderDomain;

public interface OrderRepository {

	public List<OrderDomain> selectAll();
	
	
}
