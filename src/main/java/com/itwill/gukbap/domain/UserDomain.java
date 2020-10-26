package com.itwill.gukbap.domain;

import java.sql.Date;
import java.util.List;

public class UserDomain {
	private String user_id;
	private String user_password;
	private String user_first_name;
	private String user_last_name;
	private String user_birthdate;
	private String user_phone;
	private String user_level;
	private List<AddressDomain> addresses;
	
	public UserDomain() {
		
	}
	
	public UserDomain(String user_id, String user_password, String user_first_name, String user_last_name,
			String user_birthdate, String user_phone, String user_level, List<AddressDomain> addressList) {
		super();
		this.user_id = user_id;
		this.user_password = user_password;
		this.user_first_name = user_first_name;
		this.user_last_name = user_last_name;
		this.user_birthdate = user_birthdate;
		this.user_phone = user_phone;
		this.user_level = user_level;
		this.addresses = addressList;
	}

	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public String getUser_first_name() {
		return user_first_name;
	}
	public void setUser_first_name(String user_first_name) {
		this.user_first_name = user_first_name;
	}
	public String getUser_last_name() {
		return user_last_name;
	}
	public void setUser_last_name(String user_last_name) {
		this.user_last_name = user_last_name;
	}
	public String getUser_birthdate() {
		return user_birthdate;
	}
	public void setUser_birthdate(String user_birthdate) {
		this.user_birthdate = user_birthdate;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getUser_level() {
		return user_level;
	}
	public void setUser_level(String user_level) {
		this.user_level = user_level;
	}
	
	public List<AddressDomain> getAddresses() {
		return addresses;
	}

	public void setAddresses(List<AddressDomain> addresses) {
		this.addresses = addresses;
	}

	public boolean isMatchPassword(String password) {
		boolean isMatchPassword = false;
		if (this.user_password.equals(password)) {
			isMatchPassword = true;
		}
		return isMatchPassword;
	}

	@Override
	public String toString() {
		return "UserDomain [user_id=" + user_id + ", user_password=" + user_password + ", user_first_name="
				+ user_first_name + ", user_last_name=" + user_last_name + ", user_birthdate=" + user_birthdate
				+ ", user_phone=" + user_phone + ", user_level=" + user_level + ", addressList=" + addresses + "]\n";
	}
	
	
}
