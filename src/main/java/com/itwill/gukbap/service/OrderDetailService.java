package com.itwill.gukbap.service;

import com.itwill.gukbap.domain.OrderDetailDomain;
import com.itwill.gukbap.domain.OrderDomain;

public interface OrderDetailService {

	public void updateProductCount(OrderDetailDomain orderDetail);
	
	public void deleteOrderDetail(OrderDetailDomain orderDetail);
	
}