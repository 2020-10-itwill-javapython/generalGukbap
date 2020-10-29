package com.itwill.gukbap.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itwill.gukbap.domain.OrderDetailDomain;
import com.itwill.gukbap.mapper.OrderDetailMapper;

@Repository
public class OrderDetailRepositoryImpl implements OrderDetailRepository {
	@Autowired
	private OrderDetailMapper orderDetailMapper;
	
	@Override
	public List<OrderDetailDomain> selectOrderItems(int order_no) {
		return orderDetailMapper.selectOrderItems(order_no);
	}

	@Override
	public int updateProductCount(OrderDetailDomain orderDetail) {
		return orderDetailMapper.updateProductCount(this.convertOrderDetailIntoMap(orderDetail));
	}

	@Override
	public boolean isAddedProduct(OrderDetailDomain orderDetailDomain) {
		boolean isAdded = false;
		
		if (orderDetailMapper.
				product_exist_check(this.convertOrderDetailIntoMap(orderDetailDomain)) == 1) {
			isAdded = true;
		}
		
		return isAdded;
	}
	
	@Override
	public int deleteItemFromOrder(OrderDetailDomain orderDetail) {
		return orderDetailMapper.
				deleteOrderItem(this.convertOrderDetailIntoMap(orderDetail));
	}
	
	@Override
	public int clearOrderList(int order_no) {
		return orderDetailMapper.clearOrderItems(17);
	}

	
	public Map<String, Object> convertOrderDetailIntoMap(OrderDetailDomain orderDetail){
		Map<String, Object> orderDetailMap = new HashMap<String, Object>();
		
		orderDetailMap.put("o_d_no", orderDetail.getO_d_no());
		orderDetailMap.put("order_no", orderDetail.getOrder_no());
		orderDetailMap.put("product_count", orderDetail.getO_d_product_count());
		orderDetailMap.put("product_no", orderDetail.getProduct().getProduct_no());
		
		return orderDetailMap;
	}

	
}
