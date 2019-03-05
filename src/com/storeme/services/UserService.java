package com.storeme.services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.storeme.javabean.UserBean;

public class UserService {

	static String url =("jdbc:mysql://localhost:3306/storeme");
	static String username ="root";
	static String passwords = "password";
	public ArrayList viewallUsers() {
		ArrayList<UserBean> alluserlists = new ArrayList();
		
		String sql = "select * from user";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,passwords);
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			while (rs.next()) {
				UserBean ub = new UserBean();
				
				ub.setIduser(rs.getInt("iduser"));
				ub.setAddress(rs.getString("address"));
				ub.setEmailaddress(rs.getString("emailaddress"));
				ub.setFirstname(rs.getString("firstname"));
				ub.setLastname(rs.getString("lastname"));
				ub.setMobilenumber(rs.getString("mobilenumber"));
				ub.setPassword(rs.getString("password"));
				ub.setPrivilege(rs.getInt("privilege"));
				ub.setUsername(rs.getString("username"));
				
				alluserlists.add(ub);
			}
		}catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return alluserlists;
	}
	public void adduser(UserBean U) {
		String sql = "INSERT INTO user (username, password, privilege, firstname, lastname, address, emailaddress, mobilenumber) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,passwords);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, U.getUsername());
			st.setString(2, U.getPassword());
			st.setInt(3, U.getPrivilege());
			st.setString(4, U.getFirstname());
			st.setString(5, U.getLastname());
			st.setString(7, U.getEmailaddress());
			st.setString(6, U.getAddress());
			st.setString(8, U.getMobilenumber());
			st.executeUpdate();
		}catch (ClassNotFoundException | SQLException b) {
			// TODO Auto-generated catch block
			b.printStackTrace();
		}
	}

	public boolean checksame(int a, String password) {	
		String checker;
		
		checker = "false";
		
		String sql = "select password from user where password = ?  && IDUSER =" + a;
					
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,passwords);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, password);
			System.out.println("Lookhere " + st);

			ResultSet rs = st.executeQuery();
			if(rs.next()) {
				return true;
			}			
			
		}catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
}
