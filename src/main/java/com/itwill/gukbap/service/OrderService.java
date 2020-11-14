package com.itwill.gukbap.service;

import java.util.List;

import com.itwill.gukbap.domain.OrderDetailDomain;
import com.itwill.gukbap.domain.OrderDomain;

public interface OrderService {
	
	public void insertOrder(String user_id, OrderDetailDomain orderDetailDomain);
	
	public int updateOrder(OrderDomain order);
	
	public int deleteOrder(int order_no);

	public OrderDomain selectOrderByNo(int order_no);
	
	public OrderDomain selectOrderBy_o_d_no(int o_d_no);

	public List<OrderDomain> selectOrdersByName(String user_id);
	
	public int createEmptyOrder(String user_id);
	
	public int highOrderNo(String user_id);
}
