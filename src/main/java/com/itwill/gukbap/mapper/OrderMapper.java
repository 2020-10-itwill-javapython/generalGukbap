package com.itwill.gukbap.mapper;

import java.util.List;

import com.itwill.gukbap.domain.OrderDomain;

public interface OrderMapper {

	public List<OrderDomain> selectAll(String user_id);

	public int insertOrder(OrderDomain order);

	public int updateOrder(OrderDomain order);

	public int deleteOrder(int order_no);

	public OrderDomain selectOrderByNo(int order_no);

	public OrderDomain selectOrderByName(String user_id);
	
	

}
