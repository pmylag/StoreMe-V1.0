package com.storeme.services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.storeme.javabean.AtmBean;
public class AtmService {
	static String url =("jdbc:mysql://localhost:3306/storeme");
	static String username ="root";
	static String password = "password";
	
	public ArrayList getAllAtm() {
		ArrayList<AtmBean> atmLists = new ArrayList<>();
		
		String sql1 = "select * from atm";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement(sql1);
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
				AtmBean a = new AtmBean();
				
				a.setBolt_screw_set_qty(rs.getInt(AtmBean.BOLT_SCREW_SET_QTY));
				a.setBolt_screw_set_rmk(rs.getString(AtmBean.BOLT_SCREW_SET_RMK));
				a.setCash_casst_key_qty(rs.getInt(AtmBean.CASH_CASST_KEY_QTY));
				a.setCash_casst_key_rmk(rs.getString(AtmBean.BOLT_SCREW_SET_RMK));
				a.setClad_qty(rs.getInt(AtmBean.CLAD_QTY));
				a.setClad_rmk(rs.getString(AtmBean.CLAD_RMK));
				a.setCollar_qty(rs.getInt(AtmBean.COLLAR_QTY));
				a.setCollar_rmk(rs.getString(AtmBean.COLLAR_RMK));
				a.setDecale_qty(rs.getInt(AtmBean.DECALE_QTY));
				a.setDecale_rmk(rs.getString(AtmBean.DECALE_RMK));
				a.setFsc_wndw_frame_qty(rs.getInt(AtmBean.FSC_WNDW_FRAME_QTY));
				a.setFsc_wndw_frame_remk(rs.getString(AtmBean.FSC_WNDW_FRAME_REMK));
				a.setQuantity(rs.getInt(AtmBean.QUANTITY));
				a.setRemarks(rs.getString(AtmBean.REMARKS));
				
				atmLists.add(a);
				
			}
		}catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return atmLists;
	}
}