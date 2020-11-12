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
    public void insertOrder(String user_id, OrderDetailDomain orderDetailDomain) {
    	OrderDomain latestOrder = null;
    	List<OrderDomain> userOrders = userRepository.selectUserById(user_id).getOrders();
    	
    	if (userOrders.size() == 1) {
			latestOrder = userOrders.get(0);
		} else {
    		for (int i = 0; i < userOrders.size() - 1; i++) {
				if (userOrders.get(i).getOrder_no() > userOrders.get(i+1).getOrder_no()) {
					latestOrder = userOrders.get(i);
				} else {
					latestOrder = userOrders.get(i + 1);
				}
			}
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
    public int deleteOrder(int order_no) {
    	orderDetailRepository.clearOrderList(order_no);
    	return orderRepository.deleteOrder(order_no);
    }

}
