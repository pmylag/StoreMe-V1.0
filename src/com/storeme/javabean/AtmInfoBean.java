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
	public static final String ACTIVITY = "activity";
	public static final String STATUS = "status";
	public static final String IDATM = "idatm";
	
	private int idatminfo;
	private String atmplacement;
	private String sku;
	private String Consignee;
	private String date;
	private String time;
	private String waybill_no;
	private String activity;
	private String status;
	private int idatm;
	private String site;
	private String date_shipped;
	private String received_by;
	
	private String note;
	
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
	public String getActivity() {
		return activity;
	}
	public void setActivity(String activity) {
		this.activity = activity;
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
	public String getReceived_by() {
		return received_by;
	}
	public void setReceived_by(String received_by) {
		this.received_by = received_by;
	}
	
	public String getTime_received() {
		return time_received;
	}
	public void setTime_received(String time_received) {
		this.time_received = time_received;
	}

	private String time_received;	
}
