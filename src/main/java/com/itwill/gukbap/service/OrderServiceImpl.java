package com.itwill.gukbap.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.gukbap.domain.OrderDomain;
import com.itwill.gukbap.domain.ProductDomain;
import com.itwill.gukbap.domain.WishListDomain;
import com.itwill.gukbap.repository.OrderDetailRepository;
import com.itwill.gukbap.repository.OrderRepository;
import com.itwill.gukbap.repository.WishListRepository;

@Service
public class OrderServiceImpl implements OrderService{
	
    @Autowired
	private OrderRepository orderRepository;
    
    @Autowired
    private OrderDetailRepository orderDetailRepository;
    
    private WishListRepository wishListRepository;
    
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
    
    public void create(String user_id) {
    	ProductDomain product;
    	List<WishListDomain> wishList=wishListRepository.selectWishList(user_id);
    	int price=0;
    	for (WishListDomain wishListDomain : wishList) {
    	    product =wishListDomain.getProduct();
    	    price+=product.getProduct_price();
		}
    	OrderDomain order=new OrderDomain();
    	order.setOrder_desc(/*product.getProduct_name()+*/"외"+(wishList.size()-1)+"종");
    	order.setUser_id(user_id);
    	order.setOrder_total_pricce(price);
    }
    

}
