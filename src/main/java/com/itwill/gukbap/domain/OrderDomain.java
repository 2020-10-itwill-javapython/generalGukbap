package com.itwill.gukbap.domain;

import java.util.List;

public class OrderDomain {
	/*
	 * 	order_no                      		NUMBER(10)		 NULL ,
		order_date                    		DATE		 DEFAULT sysdate		 NULL ,
		order_status                  		VARCHAR2(10)		 NULL ,
		order_total_pricce            		NUMBER(10)		 NULL ,
		order_desc                    		VARCHAR2(1000)		 NULL ,
		order_note                    		VARCHAR2(50)		 NULL ,
		user_id                       		VARCHAR2(50)		 NULL 
	 */
	private int order_no;
	private String order_date;
	private String order_status;
	private int order_total_pricce;
	private String order_desc;
	private String order_note;
	private String user_id;
	private List<OrderDetailDomain> orderDetailList;
	
	public OrderDomain() {
		// TODO Auto-generated constructor stub
	}
	
	

	public OrderDomain(int order_no, String order_date, String order_status, int order_total_pricce, String order_desc,
			String order_note, String user_id) {
		super();
		this.order_no = order_no;
		this.order_date = order_date;
		this.order_status = order_status;
		this.order_total_pricce = order_total_pricce;
		this.order_desc = order_desc;
		this.order_note = order_note;
		this.user_id = user_id;
	}
	
	



	public List<OrderDetailDomain> getOrderDetailList() {
		return orderDetailList;
	}



	public void setOrderDetailList(List<OrderDetailDomain> orderDetailList) {
		this.orderDetailList = orderDetailList;
	}



	public int getOrder_no() {
		return order_no;
	}

	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}

	public String getOrder_date() {
		return order_date;
	}

	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}

	public String getOrder_status() {
		return order_status;
	}

	public void setOrder_status(String order_status) {
		this.order_status = order_status;
	}

	public int getOrder_total_pricce() {
		return order_total_pricce;
	}

	public void setOrder_total_pricce(int order_total_pricce) {
		this.order_total_pricce = order_total_pricce;
	}

	public String getOrder_desc() {
		return order_desc;
	}

	public void setOrder_desc(String order_desc) {
		this.order_desc = order_desc;
	}

	public String getOrder_note() {
		return order_note;
	}

	public void setOrder_note(String order_note) {
		this.order_note = order_note;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}



	@Override
	public String toString() {
		return "OrderDomain [order_no=" + order_no + ", order_date=" + order_date + ", order_status=" + order_status
				+ ", order_total_pricce=" + order_total_pricce + ", order_desc=" + order_desc + ", order_note="
				+ order_note + ", user_id=" + user_id + ", orderDetailList=" + orderDetailList + "]"+"\n";
	}



	
	
	

}
