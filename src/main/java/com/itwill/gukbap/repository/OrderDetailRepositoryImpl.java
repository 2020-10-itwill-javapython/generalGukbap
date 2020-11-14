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
	public OrderDetailDomain selectOrderDetailByO_d_no(int o_d_no) {
		return orderDetailMapper.select_orderDetail_by_o_d_no(o_d_no);
	}
	
	@Override
	public void addItemIntoOrder(OrderDetailDomain orderDetail) {
		if (this.isAddedProduct(orderDetail)) { //존재하는 상품이면
			int currentProductCount = 0;
			
			for (OrderDetailDomain order : this.selectOrderItems(orderDetail.getOrder_no())) { //오더아이탬중
				if (order.getProduct().getProduct_no() == orderDetail.getProduct().getProduct_no()) {//같은 상품을 찾아서
					currentProductCount = order.getO_d_product_count(); //현재 카운트를 구한다
				}
			}
			//현재 카운트 +  추가된 상품갯수만큼 수량만 업데이트
			updateProductCount(
					new OrderDetailDomain(0, 
							orderDetail.getOrder_no(), 
							currentProductCount + orderDetail.getO_d_product_count(), 
							orderDetail.getProduct())); 
		} else {
			//아닌경우 그냥 상품을 추가
			orderDetailMapper.insertOrderDetail(convertOrderDetailIntoMap(orderDetail));
		}
	}
	
	@Override
	public int deleteItemFromOrder(OrderDetailDomain orderDetail) {
		return orderDetailMapper.
				deleteOrderItem(this.convertOrderDetailIntoMap(orderDetail));
	}
	
	@Override
	public int clearOrderList(int order_no) {
		return orderDetailMapper.clearOrderItems(order_no);
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
	
	public Map<String, Object> convertOrderDetailIntoMap(OrderDetailDomain orderDetail){
		Map<String, Object> orderDetailMap = new HashMap<String, Object>();
		
		orderDetailMap.put("o_d_no", orderDetail.getO_d_no());
		orderDetailMap.put("order_no", orderDetail.getOrder_no());
		orderDetailMap.put("product_count", orderDetail.getO_d_product_count());
		orderDetailMap.put("product_no", orderDetail.getProduct().getProduct_no());
		
		return orderDetailMap;
	}

	

	

	
}
