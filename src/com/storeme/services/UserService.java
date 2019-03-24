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
	
	public String getPassword(int id) {
		String sql = "SELECT password FROM storeme.user where iduser =" + id;
		String pass = "";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,passwords);
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
				pass = rs.getString("password");
			} 
			
		}catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pass;
	}
	
	public void deleteUser(int id) {
		String sql = "DELETE FROM storeme.user where iduser = " + id;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,passwords);
			PreparedStatement st = con.prepareStatement(sql);
			st.executeUpdate();	
			con.close();
		}catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public ArrayList getUser(int id) {
		String sql = "Select * from storeme.user WHERE iduser = " + id;
		ArrayList<UserBean> GetUser = new ArrayList<>();

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
				ub.setPrivilege(rs.getString("privilege"));
				ub.setUsername(rs.getString("username"));
				
				GetUser.add(ub);
			
			}
		}catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return GetUser;
	}
	
	
	public void editPassword(int id, String passs) {
		String sql = "UPDATE storeme.user SET password = ? WHERE iduser = " + id;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,passwords);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, passs);
			System.out.println("Eto poooo   " + st);
			st.executeUpdate();
		}catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void editUsers(int id, UserBean UB) {
		String sql = "UPDATE user SET firstname = ?, lastname = ?, address = ?, "
				+ "emailaddress = ?, mobilenumber = ? WHERE iduser = ?";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,passwords);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, UB.getFirstname());
			st.setString(2, UB.getLastname());
			st.setString(3, UB.getAddress());
			st.setString(4, UB.getEmailaddress());
			st.setString(5, UB.getMobilenumber());
			st.setInt(6, id);
			System.out.println("wkwkwkw  " + st);
			st.executeUpdate();
		}catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public ArrayList getSearchedUsers(String type, String search) {
		ArrayList<UserBean> SearchedUsers = new ArrayList<>();
		String sql = "SELECT * FROM storeme.user WHERE " + type + " LIKE ?";
		String Like;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,passwords);
			Like = "%" + search + "%";
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, Like);
			System.out.print("Eto na po!!  " + st);
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
				ub.setPrivilege(rs.getString("privilege"));
				ub.setUsername(rs.getString("username"));
				
				SearchedUsers.add(ub);
			}
		}catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return SearchedUsers;
	}
	
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
				ub.setPrivilege(rs.getString("privilege"));
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
			st.setString(3, U.getPrivilege());
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
