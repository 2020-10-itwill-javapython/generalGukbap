package com.itwill.gukbap.service;

import com.itwill.gukbap.domain.OrderDetailDomain;
import com.itwill.gukbap.domain.OrderDomain;

public interface OrderDetailService {

	public void updateProductCount(OrderDetailDomain orderDetail);
	
	public void deleteOrderDetail(OrderDetailDomain orderDetail);

	public OrderDetailDomain selectOrderDetailByO_d_no(int o_d_no);
	
	public void renewOrderDesc(int order_no);
	
}