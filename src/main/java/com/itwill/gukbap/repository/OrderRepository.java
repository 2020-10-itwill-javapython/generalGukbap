package com.itwill.gukbap.repository;

import java.util.List;


import com.itwill.gukbap.domain.OrderDomain;

public interface OrderRepository {

	public List<OrderDomain> selectAll();
	
	public int insertOrder(OrderDomain order);
	
	public int updateOrder(OrderDomain order);
	
	public int deleteOrder(int order_no);

	public OrderDomain selectOrderByNo(int order_no);

	public OrderDomain selectOrderByName(String user_id);
	
}
