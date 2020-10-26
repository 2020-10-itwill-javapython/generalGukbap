package com.itwill.gukbap.domain;

public class UserAddressDomain {
	private String user_id;
	private int address_no;
	
	public UserAddressDomain() {
		// TODO Auto-generated constructor stub
	}

	public UserAddressDomain(String user_id, int address_no) {
		super();
		this.user_id = user_id;
		this.address_no = address_no;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getAddress_no() {
		return address_no;
	}

	public void setAddress_no(int address_no) {
		this.address_no = address_no;
	}

	@Override
	public String toString() {
		return "UserAddressDomain [user_id=" + user_id + ", address_no=" + address_no + "]\n";
	}
	
}
