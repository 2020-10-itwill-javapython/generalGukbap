package com.itwill.gukbap.domain;

import java.sql.Date;

public class AddressDomain {
	/*
	 * CREATE TABLE address(
		address_no                    		NUMBER(10)		 NULL ,
		address_company_name          		VARCHAR2(50)		 NULL ,
		address_street                		VARCHAR2(200)		 NULL ,
		address_street_optional       		VARCHAR2(50)		 NULL ,
		address_city                  		VARCHAR2(20)		 NULL ,
		address_state                 		VARCHAR2(20)		 NULL 
);
	 */
	private int address_no;
	private String address_company_name;
	private String address_street;
	private String address_street_optional;
	private String address_city;
	private String address_state;
	
	public AddressDomain() {
		// TODO Auto-generated constructor stub
	}

	public AddressDomain(int address_no, String address_company_name, String address_street,
			String address_street_optional, String address_city, String address_state) {
		super();
		this.address_no = address_no;
		this.address_company_name = address_company_name;
		this.address_street = address_street;
		this.address_street_optional = address_street_optional;
		this.address_city = address_city;
		this.address_state = address_state;
	}

	public int getAddress_no() {
		return address_no;
	}

	public void setAddress_no(int address_no) {
		this.address_no = address_no;
	}

	public String getAddress_company_name() {
		return address_company_name;
	}

	public void setAddress_company_name(String address_company_name) {
		this.address_company_name = address_company_name;
	}

	public String getAddress_street() {
		return address_street;
	}

	public void setAddress_street(String address_street) {
		this.address_street = address_street;
	}

	public String getAddress_street_optional() {
		return address_street_optional;
	}

	public void setAddress_street_optional(String address_street_optional) {
		this.address_street_optional = address_street_optional;
	}

	public String getAddress_city() {
		return address_city;
	}

	public void setAddress_city(String address_city) {
		this.address_city = address_city;
	}

	public String getAddress_state() {
		return address_state;
	}

	public void setAddress_state(String address_state) {
		this.address_state = address_state;
	}

	@Override
	public String toString() {
		return "AddressDomain [address_no=" + address_no + ", address_company_name=" + address_company_name
				+ ", address_street=" + address_street + ", address_street_optional=" + address_street_optional
				+ ", address_city=" + address_city + ", address_state=" + address_state + "]"+"\n";
	}
	
	

}
