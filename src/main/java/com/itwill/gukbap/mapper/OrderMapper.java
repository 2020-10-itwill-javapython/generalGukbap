package com.itwill.gukbap.mapper;

import java.util.List;

import com.itwill.gukbap.domain.OrderDomain;

public interface OrderMapper {

	public List<OrderDomain> selectOrdersByName(String user_id);

	public OrderDomain selectOrderByNo(int order_no);
	
	public int insertOrder(OrderDomain order);

	public int updateOrder(OrderDomain order);

	public int deleteOrder(int order_no);
	
	public int clearOrders(String user_id);


}
