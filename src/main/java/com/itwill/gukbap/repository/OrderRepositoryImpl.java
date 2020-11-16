package com.itwill.gukbap.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.gukbap.domain.OrderDomain;
import com.itwill.gukbap.mapper.OrderMapper;

@Repository
public class OrderRepositoryImpl implements OrderRepository{
	
	@Autowired
	OrderMapper orderMapper;
	
	@Override
	public List<OrderDomain> selectOrdersByName(String user_id) {
		return orderMapper.selectOrdersByName(user_id);
	}
	
	
	@Override
	public OrderDomain selectOrderByNo(int order_no) {
		return orderMapper.selectOrderByNo(order_no);
	}
	
	@Override
	public int insertOrder(OrderDomain order) {
		return orderMapper.insertOrder(order);
	}
	
	@Override
	public int createEmptyOrder(String user_id) {
		return this.
				insertOrder(
						new OrderDomain(0, "", 
								"preparing", 0, "", "", user_id, null));
	}
	
	@Override
	public int updateOrder(OrderDomain order) {
		return orderMapper.updateOrder(order);
	}

	@Override
	public int update_order_status_to_complete(int order_no) {
		return orderMapper.update_order_status_to_complete(order_no);
	}
	
	@Override
	public int deleteOrder(int order_no) {
		return orderMapper.deleteOrder(order_no);
	}

	@Override
	public int clearOrders(String user_id) {
		return orderMapper.clearOrders(user_id);
	}


	

	

}
