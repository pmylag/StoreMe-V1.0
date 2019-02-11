package com.storeme.services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserService {

	static String url ="localhost:3306/StoreMe_V1.0";
	static String username ="root";
	static String passwords = "password";

	public boolean checksame(int a, String password) {	
		String checker;
		
		checker = "false";
		
		String sql = "select password from storeme.user where password = ?  && IDUSER =" + a;
					
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
