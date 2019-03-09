package com.storeme.dao;

import java.sql.*;
import java.security.*;
import java.util.Base64;
import java.util.Base64.Encoder;
import com.storeme.javabean.SessionBean;
import com.storeme.javabean.UserBean;

public class LoginDao {
	String url ="jdbc:mysql://localhost:3306/storeme";
	String username ="root";
	String password = "password";

	public int getiduser(String uname) {
		UserBean u = new UserBean();
		
		String sql = "SELECT iduser FROM storeme.user where username = ?";
		
		try {
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, uname);
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
				u.setIduser(rs.getInt(UserBean.IDUSER));
			}
			
			return u.getIduser();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return 0;
	}
	
	public int attempts(int id) {
		String sql = "Select attempts from storeme.sessiontracking where userid=?";
		SessionBean u = new SessionBean();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1,id);
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
				return rs.getInt(1);
			}
			
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return 0;
		
	}
	
	public static String generateCSRFToken() {
			
			SecureRandom random = new SecureRandom();
		    byte bytes[] = new byte[128];
		    random.nextBytes(bytes);
		    Encoder encoder = Base64.getUrlEncoder().withoutPadding();
		    String token = encoder.encodeToString(bytes);
		    System.out.println(token);
		    return token;
	}
	
public boolean check(String uname, String pass) throws SQLException {
		
		String sql = "select * from storeme.user where username=? and password=?";
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, uname);
			st.setString(2, pass);
			System.out.println("This is the statement bro ---> " + st);
			ResultSet rs = st.executeQuery();
			
			if(rs.next()) {
				return true;
			}
			
			
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		
		return false;
	}

	public  int checkadmin(String uname) {
		
		String sql = "select privilege from user where username =?";
		UserBean u = new UserBean();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, uname);
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
				u.setPrivilege(rs.getString(UserBean.PRIVILEGE));
			}
			
			if(u.getPrivilege() != "4") {
				return Integer.parseInt(u.getPrivilege());
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
		
		return 1;
	}
		
	public int checktimer(int id) {
		String sql = "select time_to_sec(timediff(now(),logged)) from sessiontracking where userid=?";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, id);
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
				System.out.println(rs.getInt(1));
				return rs.getInt(1);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	public void addnewentry(int id) {
		  String sql = "INSERT INTO storeme.sessiontracking(ipaddress,attempts,logged,userid) values (192,1,now(),?)";
		  
		  try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, id);
			st.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  
		}
	
	public boolean checkifexists(int id) {
		String sql = "SELECT * FROM storeme.sessiontracking where userid=?";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, id);
			ResultSet rs = st.executeQuery();
			if(!rs.next()) {
				return false;
			}else return true;
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
		
	}
	
	public void addattempts(int id) {
		String sql = "UPDATE storeme.sessiontracking set attempts = attempts + 1, logged=NOW() where userid=?";
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, id);
			st.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void lockaccounnt(int id) {
		String sql = "UPDATE storeme.user set locked=1 where iduser=?";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, id);
			st.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public int checklock(int id) {
		String sql = "SELECT locked FROM storeme.user where iduser=?";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, id);
			ResultSet rs = st.executeQuery();
			if(rs.next()) {
				System.out.println(rs.getInt(1));
				return rs.getInt(1);
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
		
	}
	
	public void unlockaccounnt(int id) {
		String sql = "UPDATE storeme.user set locked=0 where iduser=?";
		String sql1 = "Update storeme.sessiontracking set attempts=0 where userid=?";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			PreparedStatement st1 = con.prepareStatement(sql1);
			st.setInt(1, id);
			st1.setInt(1, id);
			st.executeUpdate();
			st1.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public boolean checkusername(String uname) {
		String sql = "select * from user where username=?";
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, uname);
			ResultSet rs = st.executeQuery();
			
			if(rs.next()) {
				return true;
			}
			
			
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
		
		return false;
		
		
	}
	
	
	
}
