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
	public List<OrderDomain> selectAll() {
		return orderMapper.selectAll();
	}
	
	
	@Override
	public OrderDomain selectOrderByNo(int order_no) {
		return orderMapper.selectOrderByNo(order_no);
	}
	
	@Override
	public OrderDomain selectOrderByName(String user_id) {
		return orderMapper.selectOrderByName(user_id);
	}
	
	
	@Override
	public int insertOrder(OrderDomain order) {
		return orderMapper.insertOrder(order);
	}
	
	@Override
	public int updateOrder(OrderDomain order) {
		return orderMapper.updateOrder(order);
	}
	
	@Override
	public int deleteOrder(int order_no) {
		return orderMapper.deleteOrder(order_no);
	}

}
