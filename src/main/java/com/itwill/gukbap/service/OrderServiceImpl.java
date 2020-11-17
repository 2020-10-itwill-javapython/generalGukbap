package com.itwill.gukbap.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.gukbap.domain.OrderDetailDomain;
import com.itwill.gukbap.domain.OrderDomain;
import com.itwill.gukbap.domain.ProductDomain;
import com.itwill.gukbap.domain.WishListDomain;
import com.itwill.gukbap.repository.OrderDetailRepository;
import com.itwill.gukbap.repository.OrderRepository;
import com.itwill.gukbap.repository.UserRepository;
import com.itwill.gukbap.repository.WishListRepository;

@Service
public class OrderServiceImpl implements OrderService{
	
    @Autowired
	private OrderRepository orderRepository;
    @Autowired
    private OrderDetailRepository orderDetailRepository;
    @Autowired
    private UserRepository userRepository;
    
    @Override
    public List<OrderDomain> selectOrdersByName(String user_id){
        return orderRepository.selectOrdersByName(user_id);	
    }
    
    @Override
    public OrderDomain selectOrderByNo(int order_no) {
    	return orderRepository.selectOrderByNo(order_no);
    }
    
    @Override
    public int highOrderNo(String user_id) {
    	List<OrderDomain> orders = orderRepository.selectOrdersByName(user_id);
    	OrderDomain higest_order = new OrderDomain();
    	
    	if (orders.size() == 1) {
			higest_order = orders.get(0);
		} 
    	
    	if (orders.size() > 1) {
    		OrderDomain temp = new OrderDomain();
    		for (int i = 0; i < orders.size() - 1; i++) {
    			if (orders.get(i).getOrder_no() > orders.get(i + 1).getOrder_no() ) {
    				temp = orders.get(i);
    				if (temp.getOrder_no() > higest_order.getOrder_no()) {
    					higest_order = temp;
					}
    			} 
    		}
		}
    	
    	
    	return higest_order.getOrder_no(); 
    }
	@Override
	public OrderDomain selectOrderBy_o_d_no(int o_d_no) {
		OrderDetailDomain od = orderDetailRepository.selectOrderDetailByO_d_no(o_d_no);
		OrderDomain order = orderRepository.selectOrderByNo(od.getOrder_no());
		return order;
	}
    
    @Override
    public void insertOrder(String user_id, OrderDetailDomain orderDetailDomain) {
    	OrderDomain latestOrder = new OrderDomain();
    	List<OrderDomain> userOrders = orderRepository.selectOrdersByName(user_id);
    	
    	if (userOrders.size() > 1) {
    		OrderDomain temp = new OrderDomain();
    		for (int i = 0; i < userOrders.size() - 1; i++) {
    			if (userOrders.get(i).getOrder_no() > userOrders.get(i + 1).getOrder_no() ) {
    				temp = userOrders.get(i);
    				if (temp.getOrder_no() > latestOrder.getOrder_no()) {
    					latestOrder = temp;
					}
    			} 
    		}
    		System.out.println(latestOrder);
		}
    	
    	
		orderDetailRepository.addItemIntoOrder(
					new OrderDetailDomain(0, 
							latestOrder.getOrder_no(),
							orderDetailDomain.getO_d_product_count(), 
							orderDetailDomain.getProduct()));
		
		int order_total_price = 0;
		
		List<OrderDetailDomain> orderDetails = 
				orderRepository.selectOrderByNo(latestOrder.getOrder_no()).getOrderDetailList();
		
		for (OrderDetailDomain item : orderDetails) {
			order_total_price += 
					item.getProduct().getProduct_price() * item.getO_d_product_count();
		}
		
		this.updateOrder(
				new OrderDomain(
						latestOrder.getOrder_no(), 
						"sysdate", 
						"preparing", 
						order_total_price, 
						orderDetails.get(0).getProduct().getProduct_name() + "외 "+ (orderDetails.size() - 1) +"개 상품", 
						"", user_id, null));
		
    }

	@Override
	public int createEmptyOrder(String user_id) {
		return orderRepository.createEmptyOrder(user_id);
	}
    
    @Override
    public int updateOrder(OrderDomain order) {
    	return orderRepository.updateOrder(order);
    }
    
    @Override
	public int update_order_status_to_complete(int order_no) {
		return orderRepository.update_order_status_to_complete(order_no);
	}
    
    @Override
    public int deleteOrder(int order_no) {
    	orderDetailRepository.clearOrderList(order_no);
    	return orderRepository.deleteOrder(order_no);
    }

	


}
