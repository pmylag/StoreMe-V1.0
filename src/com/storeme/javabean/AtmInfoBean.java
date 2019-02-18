package com.storeme.javabean;

public class AtmInfoBean {
	public static final String TABLE_NAME = "atminfo";
	public static final String IDATMINFO = "idatminfo";
	public static final String ATMPLACEMENT = "atmplacement";
	public static final String SKU = "sku";
	public static final String CONSIGNEE = "consignee";
	public static final String DATE = "date";
	public static final String TIME = "time";
	public static final String WAYBILL_NO = "waybill_no";
	public static final String ACTIVITY = "activtiy";
	public static final String STATUS = "status";
	public static final String IDATM = "idatm";
	
	public int getIdatminfo() {
		return idatminfo;
	}
	public void setIdatminfo(int idatminfo) {
		this.idatminfo = idatminfo;
	}
	public String getAtmplacement() {
		return atmplacement;
	}
	public void setAtmplacement(String atmplacement) {
		this.atmplacement = atmplacement;
	}
	public String getSku() {
		return sku;
	}
	public void setSku(String sku) {
		this.sku = sku;
	}
	public String getConsignee() {
		return Consignee;
	}
	public void setConsignee(String consignee) {
		Consignee = consignee;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getWaybill_no() {
		return waybill_no;
	}
	public void setWaybill_no(String waybill_no) {
		this.waybill_no = waybill_no;
	}
	public String getActivtiy() {
		return activtiy;
	}
	public void setActivtiy(String activtiy) {
		this.activtiy = activtiy;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getIdatm() {
		return idatm;
	}
	public void setIdatm(int idatm) {
		this.idatm = idatm;
	}
	private int idatminfo;
	private String atmplacement;
	private String sku;
	private String Consignee;
	private String date;
	private String time;
	private String waybill_no;
	private String activtiy;
	private String status;
	private int idatm;
	public String getSite() {
		return site;
	} 
	public void setSite(String site) {
		this.site = site;
	}
	public String getDate_shipped() {
		return date_shipped;
	}
	public void setDate_shipped(String date_shipped) {
		this.date_shipped = date_shipped;
	}
	private String site;
	private String date_shipped;
	

}
