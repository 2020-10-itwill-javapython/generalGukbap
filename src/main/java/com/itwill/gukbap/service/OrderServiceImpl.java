package com.itwill.gukbap.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.gukbap.domain.OrderDomain;
import com.itwill.gukbap.repository.OrderDetailRepository;
import com.itwill.gukbap.repository.OrderRepository;

@Service
public class OrderServiceImpl implements OrderService{
	
    @Autowired
	private OrderRepository orderRepository;
    
    @Autowired
    private OrderDetailRepository orderDetailRepository;
    
    @Override
    public List<OrderDomain> selectAll(String user_id){
        return orderRepository.selectAll(user_id);	
    }
    
    @Override
    public int insertOrder(OrderDomain order) {
    	return orderRepository.insertOrder(order);
    }
    @Override
    public int updateOrder(OrderDomain order) {
    	return orderRepository.updateOrder(order);
    }
    
    
    @Override
    public int deleteOrder(int order_no) {
    	return orderRepository.deleteOrder(order_no);
    }
    
    
    @Override
    public OrderDomain selectOrderByNo(int order_no) {
    	return orderRepository.selectOrderByNo(order_no);
    }
    
    
    @Override
    public OrderDomain selectOrderByName(String user_id) {
    	return orderRepository.selectOrderByName(user_id);
    }
    

}
