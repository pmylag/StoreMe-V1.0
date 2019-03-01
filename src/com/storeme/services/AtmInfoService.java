package com.storeme.services;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import com.storeme.javabean.AtmInfoBean;

public class AtmInfoService {

	static String url =("jdbc:mysql://localhost:3306/storeme");
	static String username ="root";
	static String password = "password";
	
	public int getcountSection1() {
		String sql = "SELECT COUNT(*) FROM storeme.atmninfo WHERE atmplacement = 'A'";
		int count = 0;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			while(rs.next())
				count = rs.getInt("COUNT(*)");
		}catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return count;
	}
	
	public int getcountSection2() {
		String sql = "SELECT COUNT(*) FROM storeme.atmninfo WHERE atmplacement = 'B' ";
		int count = 0;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			while(rs.next())
				count = rs.getInt("COUNT(*)");
		}catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return count;
	}
	public int getcountSection3() {
		String sql = "SELECT COUNT(*) FROM storeme.atmninfo WHERE atmplacement = 'C'";
		int count = 0;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			while(rs.next())
				count = rs.getInt("COUNT(*)");
		}catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return count;
	}
	public int getcountSection4() {
		String sql = "SELECT COUNT(*) FROM storeme.atmninfo WHERE atmplacement = 'D'";
		int count = 0;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			while(rs.next())
				count = rs.getInt("COUNT(*)");
		}catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return count;
	}
	
	public int getcountSection5() {
		String sql = "SELECT COUNT(*) FROM storeme.atmninfo WHERE atmplacement = 'E' ";
		int count = 0;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			while(rs.next())
				count = rs.getInt("COUNT(*)");
		}catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return count;
	}
	
	public int getcountSection6() {
		String sql = "SELECT COUNT(*) FROM storeme.atmninfo WHERE atmplacement = 'F' ";
		int count = 0;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			while(rs.next())
				count = rs.getInt("COUNT(*)");
		}catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return count;
	}
	
	public int getcountSection7() {
		String sql = "SELECT COUNT(*) FROM storeme.atmninfo WHERE atmplacement = 'G' ";
		int count = 0;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			while(rs.next())
				count = rs.getInt("COUNT(*)");
		}catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return count;
	}
	
	public int getcountSection8() {
		String sql = "SELECT COUNT(*) FROM storeme.atmninfo WHERE atmplacement = 'H ";
		int count = 0;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			while(rs.next())
				count = rs.getInt("COUNT(*)");
		}catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return count;
	}
	
	public int getcountSection9() {
		String sql = "SELECT COUNT(*) FROM storeme.atmninfo WHERE atmplacement = 'I' ";
		int count = 0;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			while(rs.next())
				count = rs.getInt("COUNT(*)");
		}catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return count;
	}
	
	
	public int getcountSection10() {
		String sql = "SELECT COUNT(*) FROM storeme.atmninfo WHERE atmplacement = 'J' ";
		int count = 0;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			while(rs.next())
				count = rs.getInt("COUNT(*)");
		}catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return count;
	}


	public ArrayList getSearchedAtmInfo(String type, String search) {
		ArrayList<AtmInfoBean> atmInfoBeanlists = new ArrayList<>();
		String sql = "SELECT * FROM  atmninfo WHERE ? LIKE ?";
		String Like;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			Like = "%" + search + "%";
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, type);
			st.setString(2, Like);
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return atmInfoBeanlists;
	}
	
	public void editAtmInfo( AtmInfoBean ai) {
		String sql = "Update atmninfo SET atmplacement = ?, date_shipped = ?, status = ?, received_by = ?, "
				+ "activtiy = ? WHERE idatminfo = ?";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, ai.getAtmplacement());
			st.setString(2, ai.getDate_shipped());
			st.setString(3, ai.getStatus());
			st.setString(4, ai.getReceived_by());
			st.setString(5, ai.getActivtiy());
			st.setInt(6, ai.getIdatminfo());
			st.executeUpdate();
		}catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void addAtmInfo(int id, AtmInfoBean ai) {
		String sql = "Update atmninfo SET site = ? , sku = ? , consignee = ?, date = ?, date_shipped = ?, time = ? ,waybill_no = ?,  activtiy = ?, "
				      + "   status = ?, idatm = ? WHERE idatminfo = ? ";

		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, ai.getSite());
			st.setString(2, ai.getSku());
			st.setString(3, ai.getConsignee());
			st.setString(4, ai.getDate());
			st.setString(5, ai.getDate_shipped());
			st.setString(6, ai.getTime());
			st.setString(7, ai.getWaybill_no());
			st.setString(8, ai.getActivtiy());
			st.setString(9, ai.getStatus());
			st.setInt(10, id);
			st.setInt(11, id);
			System.out.println("wkwkwkw  " + st);
			st.executeUpdate();
		}catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public void addAtmSection(AtmInfoBean ai) {
		String sql = "INSERT INTO atmninfo (atmplacement) VALUES (?)";
		
		System.out.println("Hey this is the statement: " + sql); 

		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, ai.getAtmplacement());
			st.executeUpdate();
			con.close();
			
		}catch (ClassNotFoundException | SQLException b) {
			// TODO Auto-generated catch block
			b.printStackTrace();
		}
		
		
	}
	
	public void deleteAtmInfo(int id){
		ArrayList<AtmInfoBean> atm = new ArrayList<>();
		
		String sql = "DELETE FROM atmninfo where idatminfo = " + id;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			st.executeUpdate();	
			con.close();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public String getSKUint(int id) {
		String sql = "select sku from atmninfo where idatminfo = " + id;
		String whats = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs = st.executeQuery();
			
			while(rs.next()) {
				whats = rs.getString("sku");
			} 
			
		}catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return whats;
	}
	public int getMaxIdAtmInfo() {
		int MaxId = 0;
		
		String sql1 = "select MAX(idatminfo) from atmninfo";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql1);
			ResultSet rs = st.executeQuery();
			
			while(rs.next()) {
				MaxId = rs.getInt("MAX(idatminfo)");
				
			}
	
		}catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
		}
		
		return MaxId;
	}
	
	public ArrayList getAllAtmInfo() {
		ArrayList<AtmInfoBean> atminfoLists = new ArrayList();
		
		String sql1 = "select * from atmninfo";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql1);
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
				AtmInfoBean ai = new AtmInfoBean();
				
				ai.setIdatminfo(rs.getInt(AtmInfoBean.IDATMINFO));
				ai.setActivtiy(rs.getString(AtmInfoBean.ACTIVITY));
				ai.setAtmplacement(rs.getString(AtmInfoBean.ATMPLACEMENT));
				ai.setConsignee(rs.getString(AtmInfoBean.CONSIGNEE));
				ai.setSite(rs.getString("site"));
				ai.setDate_shipped(rs.getString("date_shipped"));
				ai.setDate(rs.getString(AtmInfoBean.DATE));
				ai.setIdatm(rs.getInt(AtmInfoBean.IDATM));
				ai.setSku(rs.getString(AtmInfoBean.SKU));
				ai.setStatus(rs.getString(AtmInfoBean.STATUS));
				ai.setTime(rs.getString(AtmInfoBean.TIME));
				ai.setWaybill_no(rs.getString(AtmInfoBean.WAYBILL_NO));
				ai.setReceived_by(rs.getString("received_by"));
				
				atminfoLists.add(ai);
			}
			
			
		}catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return atminfoLists;
	}
	
	
}
