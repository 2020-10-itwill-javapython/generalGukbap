package com.itwill.gukbap.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.gukbap.domain.OrderDetailDomain;
import com.itwill.gukbap.domain.OrderDomain;
import com.itwill.gukbap.repository.OrderDetailRepository;
import com.itwill.gukbap.repository.OrderRepository;

@Service
public class OrderDetailServiceImpl implements OrderDetailService {
	@Autowired
	private OrderDetailRepository orderDetailRepository;
	@Autowired
	private OrderRepository orderRepository;
	
	@Override
	public void updateProductCount(OrderDetailDomain orderDetail) {
		orderDetailRepository.updateProductCount(orderDetail);
		this.renewOrderDesc(orderDetail.getOrder_no());
	}
	
	@Override
	public void deleteOrderDetail(OrderDetailDomain orderDetail) {
		orderDetailRepository.deleteItemFromOrder(orderDetail);
		this.renewOrderDesc(orderDetail.getOrder_no());
	}
	
	private void renewOrderDesc(int order_no) {
		OrderDomain order = 
				orderRepository.selectOrderByNo(order_no);
		List<OrderDetailDomain> orderItems = order.getOrderDetailList();
		
		
		int order_total_price = 0;
		for (OrderDetailDomain orderDetailDomain : orderItems) {
			order_total_price += 
					orderDetailDomain.getProduct().getProduct_price() * 
					orderDetailDomain.getO_d_product_count();
		}
		
		orderRepository.
		updateOrder(
				new OrderDomain(
						order.getOrder_no(), 
						"sysdate", 
						"preparing", 
						order_total_price, 
						orderItems.get(0).getProduct().getProduct_name() + "외 "+ (orderItems.size() - 1) +"개 상품", 
						"", 
						order.getUser_id(), null));
		
	}
}
