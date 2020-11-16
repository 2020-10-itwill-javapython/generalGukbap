package com.itwill.gukbap.repository;

import java.util.List;


import com.itwill.gukbap.domain.OrderDomain;

public interface OrderRepository {

	public List<OrderDomain> selectOrdersByName(String user_id);
	
	public OrderDomain selectOrderByNo(int order_no);
	
	public int insertOrder(OrderDomain order);
	
	public int createEmptyOrder(String user_id);
	
	public int updateOrder(OrderDomain order);
	
	public int update_order_status_to_complete(int order_no);
	
	public int deleteOrder(int order_no);

	public int clearOrders(String user_id);
}
