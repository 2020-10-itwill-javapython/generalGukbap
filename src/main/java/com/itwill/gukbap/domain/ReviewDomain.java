package com.itwill.gukbap.domain;

import java.sql.Date;

public class ReviewDomain {
	/*
		review_no                     		NUMBER(10)		 NULL ,
		review_image                  		VARCHAR2(500)		 NULL ,
		review_title                  		VARCHAR2(200)		 NULL ,
		review_content                		VARCHAR2(3000)		 NULL ,
		review_upload_date            		DATE		 DEFAULT sysdate		 NULL ,
		review_group_no               		NUMBER(10)		 NULL ,
		review_step                   		NUMBER(10)		 NULL ,
		review_depth                  		NUMBER(10)		 NULL ,
		product_no                    		NUMBER(10)		 NULL ,
		o_d_no                        		NUMBER(10)		 NULL
	*/
	
	private int review_no;
	private String review_image;
	private String review_title;
	private String review_content;
	private String review_upload_date;
	private int review_group_no;
	private int review_step;
	private int review_depth;
	private int product_no;
	private int o_d_no;
	
	
	public ReviewDomain() {
	}


	public ReviewDomain(int review_no, String review_image, String review_title, String review_content,
			String review_upload_date, int review_group_no, int review_step, int review_depth, int product_no,
			int o_d_no) {
		super();
		this.review_no = review_no;
		this.review_image = review_image;
		this.review_title = review_title;
		this.review_content = review_content;
		this.review_upload_date = review_upload_date;
		this.review_group_no = review_group_no;
		this.review_step = review_step;
		this.review_depth = review_depth;
		this.product_no = product_no;
		this.o_d_no = o_d_no;
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

	public int getReview_step() {
		return review_step;
	}

	public void setReview_step(int review_step) {
		this.review_step = review_step;
	}

	public int getReview_depth() {
		return review_depth;
	}


	public void setReview_depth(int review_depth) {
		this.review_depth = review_depth;
	}


	public int getProduct_no() {
		return product_no;
	}

	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}

	public int getO_d_no() {
		return o_d_no;
	}

	public void setO_d_no(int o_d_no) {
		this.o_d_no = o_d_no;
	}


	@Override
	public String toString() {
		return "ReviewDomain [ review_no= " + review_no + ", review_image= " + review_image + ", review_title= " + 
				review_title + ", review_content= " + review_content + ", review_upload_date= " + review_upload_date + 
				", review_group_no= " + review_group_no + ", review_step= " + review_step +
				", review_depth= " + review_depth +", product_no= " + product_no + ", o_d_no= " + o_d_no + "]"+"\n";
	}
	
}
