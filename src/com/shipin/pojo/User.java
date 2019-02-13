package com.shipin.pojo;

public class User {

	private Integer userid;
	private String name;
	private String username;
	private String password;
	private String type;
	private Integer status;

	
	public Integer getUserid() {
		return userid;
	}


	public void setUserid(Integer userid) {
		this.userid = userid;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	public Integer getStatus() {
		return status;
	}


	public void setStatus(Integer status) {
		this.status = status;
	}


	@Override
	public String toString() {
		return "User [userid=" + userid + ", name=" + name + ", username=" + username + ", password=" + password
				+ ", type=" + type + ", status=" + status + "]";
	}
	
	
	
}
