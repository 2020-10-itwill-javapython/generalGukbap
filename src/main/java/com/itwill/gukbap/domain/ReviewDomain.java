package com.itwill.gukbap.domain;

public class ReviewDomain {
	/*
	INSERT INTO review 
	(review_no, review_image, review_title, 
	review_content, review_upload_date, review_group_no, 
	review_group_order, product_no, order_detail_no) 
	
	VALUES (review_no, review_image, review_title, 
	review_content, review_upload_date, review_group_no, 
	review_group_order, product_no, order_detail_no);
	*/
	
	private int review_no;
	private String review_image;
	private String review_title;
	private String review_content;
	private String review_upload_date;
	private int review_group_no;
	private int review_group_order;
	private int product_no;
	private int order_detail_no;
	
	public ReviewDomain() {
	}

	public ReviewDomain(int review_no, String review_image, String review_title, String review_content,
			String review_upload_date, int review_group_no, int review_group_order, int product_no,
			int order_detail_no) {
		super();
		this.review_no = review_no;
		this.review_image = review_image;
		this.review_title = review_title;
		this.review_content = review_content;
		this.review_upload_date = review_upload_date;
		this.review_group_no = review_group_no;
		this.review_group_order = review_group_order;
		this.product_no = product_no;
		this.order_detail_no = order_detail_no;
	}

	public int getReview_no() {
		return review_no;
	}

	public void setReview_no(int review_no) {
		this.review_no = review_no;
	}

	public String getReview_image() {
		return review_image;
	}

	public void setReview_image(String review_image) {
		this.review_image = review_image;
	}

	public String getReview_title() {
		return review_title;
	}

	public void setReview_title(String review_title) {
		this.review_title = review_title;
	}

	public String getReview_content() {
		return review_content;
	}

	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}

	public String getReview_upload_date() {
		return review_upload_date;
	}

	public void setReview_upload_date(String review_upload_date) {
		this.review_upload_date = review_upload_date;
	}

	public int getReview_group_no() {
		return review_group_no;
	}

	public void setReview_group_no(int review_group_no) {
		this.review_group_no = review_group_no;
	}

	public int getReview_group_order() {
		return review_group_order;
	}

	public void setReview_group_order(int review_group_order) {
		this.review_group_order = review_group_order;
	}

	public int getProduct_no() {
		return product_no;
	}

	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}

	public int getOrder_detail_no() {
		return order_detail_no;
	}

	public void setOrder_detail_no(int order_detail_no) {
		this.order_detail_no = order_detail_no;
	}
	
	@Override
	public String toString() {
		return "ReviewDomain [ review_no= " + review_no + ", review_image= " + review_image + ", review_title= " + 
				review_title + ", review_content= " + review_content + ", review_upload_date= " + review_upload_date + 
				", review_group_no= " + review_group_no + ", review_group_order= " + review_group_order +
				", product_no= " + product_no + ", order_detail_no= " + order_detail_no + "]"+"\n";
	}
	
	
	
	
	

}
