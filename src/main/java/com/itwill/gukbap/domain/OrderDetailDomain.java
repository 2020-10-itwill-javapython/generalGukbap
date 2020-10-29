package com.itwill.gukbap.domain;

public class OrderDetailDomain {
	private	int o_d_no;
	private int order_no;
	private int o_d_product_count;
	private ProductDomain product;
	
	public OrderDetailDomain() {
	}

	public OrderDetailDomain(int o_d_no, int order_no, int o_d_product_count, ProductDomain product) {
		super();
		this.o_d_no = o_d_no;
		this.order_no = order_no;
		this.o_d_product_count = o_d_product_count;
		this.product = product;
	}
	
	public int getO_d_product_count() {
		return o_d_product_count;
	}

	public void setO_d_product_count(int o_d_product_count) {
		this.o_d_product_count = o_d_product_count;
	}

	public int getO_d_no() {
		return o_d_no;
	}

	public void setO_d_no(int o_d_no) {
		this.o_d_no = o_d_no;
	}

	public int getOrder_no() {
		return order_no;
	}

	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}

	public ProductDomain getProduct() {
		return product;
	}

	public void setProduct(ProductDomain product) {
		this.product = product;
	}

	@Override
	public String toString() {
		return "OrderDetailDomain [o_d_no=" + o_d_no + ", order_no=" + order_no + ", o_d_product_count="
				+ o_d_product_count + ", product=" + product + "]\n";
	}

	
}
