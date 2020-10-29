package com.itwill.gukbap.repository;

import java.util.List;
import java.util.Map;

import com.itwill.gukbap.domain.OrderDetailDomain;

public interface OrderDetailRepository {

	public List<OrderDetailDomain> selectOrderItems(int order_no);
	
	public boolean isAddedProduct(OrderDetailDomain orderDetail);
	
	public int updateProductCount(OrderDetailDomain orderDetail);
	
	public int deleteItemFromOrder(OrderDetailDomain orderDetail);
	
	public int clearOrderList(int order_no);
	
	public Map<String, Object> convertOrderDetailIntoMap(OrderDetailDomain orderDetail);
}