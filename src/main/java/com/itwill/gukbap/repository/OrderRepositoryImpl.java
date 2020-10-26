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

}
