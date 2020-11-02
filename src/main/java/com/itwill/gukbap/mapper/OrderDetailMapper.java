package com.itwill.gukbap.mapper;

import java.util.List;
import java.util.Map;

import com.itwill.gukbap.domain.OrderDetailDomain;

public interface OrderDetailMapper {
	
	public List<OrderDetailDomain> selectOrderItems(int order_no);
	
	public int insertOrderDetail(Map<String, Object> orderDetailMap);
	
	public int product_exist_check(Map<String, Object> product_exist_check_map);
	
	public int updateProductCount(Map<String, Object> orderDetailMap);
	
	public int deleteOrderItem(Map<String, Object> orderDetailMap);
	
	public int clearOrderItems(int order_no);
}
