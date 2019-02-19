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
				
				atminfoLists.add(ai);
			}
			
			
		}catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return atminfoLists;
	}
	
	
}
