package com.itwill.gukbap.domain;

import java.sql.Date;

public class ProductDomain {
	/*
	 	product_no                    		NUMBER(10)		 NULL ,
		product_name                  		VARCHAR2(50)		 NULL ,
		product_price                 		NUMBER(10)		 NULL ,
		product_image                 		VARCHAR2(500)		 NULL ,
		product_desc                  		VARCHAR2(2000)		 NULL ,
		product_sale_count            		NUMBER(10)		 NULL ,
		product_click_count           		NUMBER(10)		 NULL ,
		c_no                   		NUMBER(10)		 NULL ,
		product_order                 		NUMBER(10)		 NULL ,
		product_isOnSale              		VARCHAR2(10)		 DEFAULT 'false'		 NULL ,
		product_discountRate          		NUMBER(10)		 DEFAULT 0		 NULL, 
		product_sale_date             		DATE		 NULL 
	 */
	
	private int product_no;
	private String product_name;
	private int product_price;
	private String product_image;
	private String product_desc;
	private int product_sale_count;
	private int product_click_count;
	private int c_no;
	private int product_order;
	private String product_isOnSale;
	private int product_discountRate;
	private String product_sale_date;
	
	public ProductDomain() {
	}

	

	public ProductDomain(int product_no, String product_name, int product_price, String product_image,
			String product_desc, int product_sale_count, int product_click_count, int c_no, int product_order,
			String product_isOnSale, int product_discountRate, String product_sale_date) {
		super();
		this.product_no = product_no;
		this.product_name = product_name;
		this.product_price = product_price;
		this.product_image = product_image;
		this.product_desc = product_desc;
		this.product_sale_count = product_sale_count;
		this.product_click_count = product_click_count;
		this.c_no = c_no;
		this.product_order = product_order;
		this.product_isOnSale = product_isOnSale;
		this.product_discountRate = product_discountRate;
		this.product_sale_date = product_sale_date;
	}


	public int getProduct_no() {
		return product_no;
	}

	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public int getProduct_price() {
		return product_price;
	}

	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}

	public String getProduct_image() {
		return product_image;
	}

	public void setProduct_image(String product_image) {
		this.product_image = product_image;
	}

	public String getProduct_desc() {
		return product_desc;
	}

	public void setProduct_desc(String product_desc) {
		this.product_desc = product_desc;
	}

	public int getProduct_sale_count() {
		return product_sale_count;
	}

	public void setProduct_sale_count(int product_sale_count) {
		this.product_sale_count = product_sale_count;
	}

	public int getProduct_click_count() {
		return product_click_count;
	}

	public void setProduct_click_count(int product_click_count) {
		this.product_click_count = product_click_count;
	}

	public int getC_no() {
		return c_no;
	}

	public void setC_no(int c_no) {
		this.c_no = c_no;
	}

	public int getProduct_order() {
		return product_order;
	}

	public void setProduct_order(int product_order) {
		this.product_order = product_order;
	}

	public String getProduct_isOnSale() {
		return product_isOnSale;
	}

	public void setProduct_isOnSale(String product_isOnSale) {
		this.product_isOnSale = product_isOnSale;
	}

	public int getProduct_discountRate() {
		return product_discountRate;
	}

	public void setProduct_discountRate(int product_discountRate) {
		this.product_discountRate = product_discountRate;
	}

	public String getProduct_sale_date() {
		return product_sale_date;
	}

	public void setProduct_sale_date(String product_sale_date) {
		this.product_sale_date = product_sale_date;
	}



	@Override
	public String toString() {
		return "ProductDomain [ product_no= " + product_no + ", product_name= " + product_name + ", product_price= " + 
				product_price + ", product_image= " + product_image + ", product_desc= " + product_desc + 
				", product_sale_count= " + product_sale_count + ", product_click_count= " + product_click_count +
				", c_no= " + c_no + ", product_order= " + product_order +
				", product_isOnSale= " + product_isOnSale + ", product_discountRate= " + 
				product_discountRate +", product_sale_date= " + product_sale_date + "]"+"\n"; 
	}
	
	

}
