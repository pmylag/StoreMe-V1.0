package com.storeme.javabean;

public class UserBean {
	public static final String TABLE_NAME = "user";
	public static final String IDUSER = "iduser";
	public static final String USERNAME = "username";
	public static final String PASSWORD ="password";
	public static final String PRIVILEGE = "privilege";

	public int getIduser() {
		return iduser;
	}
	public void setIduser(int iduser) {
		this.iduser = iduser;
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
	public String getPrivilege() {
		return privilege;
	}
	public void setPrivilege(String privilege) {
		this.privilege = privilege;
	}
	private int iduser;
	private  String username;
	private String password;
	private String privilege;
	
	
}
