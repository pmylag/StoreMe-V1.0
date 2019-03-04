package com.storeme.javabean;

public class AtmBean {
	public static final String TABLE_NAME = "atm";
	public static final String IDATM = "idatm";
	public static final String QUANTITY = "quantity";
	public static final String REMARKS = "remarks";
	public static final String BOLT_SCREW_SET_QTY = "bolt_screw_set_qty";
	public static final String BOLT_SCREW_SET_RMK = "bolt_screw_set_rmk";
	public static final String CASH_CASST_KEY_QTY = "cash_casst_key_qty";
	public static final String CASH_CASST_KEY_RMK = "cash_casst_key_rmk";
	public static final String CLAD_QTY = "clad_qty";
	public static final String CLAD_RMK = "clad_rmk";
	public static final String COLLAR_QTY = "collar_qty";
	public static final String COLLAR_RMK = "collar_rmk";
	public static final String DECALE_QTY = "decale_qty";
	public static final String DECALE_RMK = "decale_rmk";
	public static final String FSC_WNDW_FRAME_QTY = "fsc_wndw_frame_qty";
	public static final String FSC_WNDW_FRAME_REMK = "fsc_wndw_frame_remk";

	public int getIdatm() {
		return idatm;
	}
	public void setIdatm(int idatm) {
		this.idatm = idatm;
	}
	public int getBolt_screw_set_qty() {
		return bolt_screw_set_qty;
	}
	public void setBolt_screw_set_qty(int bolt_screw_set_qty) {
		this.bolt_screw_set_qty = bolt_screw_set_qty;
	}
	public String getBolt_screw_set_rmk() {
		return bolt_screw_set_rmk;
	}
	public void setBolt_screw_set_rmk(String bolt_screw_set_rmk) {
		this.bolt_screw_set_rmk = bolt_screw_set_rmk;
	}
	public int getCash_casst_key_qty() {
		return cash_casst_key_qty;
	}
	public void setCash_casst_key_qty(int cash_casst_key_qty) {
		this.cash_casst_key_qty = cash_casst_key_qty;
	}
	public String getCash_casst_key_rmk() {
		return cash_casst_key_rmk;
	}
	public void setCash_casst_key_rmk(String cash_casst_key_rmk) {
		this.cash_casst_key_rmk = cash_casst_key_rmk;
	}
	public int getClad_qty() {
		return clad_qty;
	}
	public void setClad_qty(int clad_qty) {
		this.clad_qty = clad_qty;
	}
	public String getClad_rmk() {
		return clad_rmk;
	}
	public void setClad_rmk(String clad_rmk) {
		this.clad_rmk = clad_rmk;
	}
	public int getCollar_qty() {
		return collar_qty;
	}
	public void setCollar_qty(int collar_qty) {
		this.collar_qty = collar_qty;
	}
	public String getCollar_rmk() {
		return collar_rmk;
	}
	public void setCollar_rmk(String collar_rmk) {
		this.collar_rmk = collar_rmk;
	}
	public int getDecale_qty() {
		return decale_qty;
	}
	public void setDecale_qty(int decale_qty) {
		this.decale_qty = decale_qty;
	}
	public String getDecale_rmk() {
		return decale_rmk;
	}
	public void setDecale_rmk(String decale_rmk) {
		this.decale_rmk = decale_rmk;
	}
	public int getFsc_wndw_frame_qty() {
		return fsc_wndw_frame_qty;
	}
	public void setFsc_wndw_frame_qty(int fsc_wndw_frame_qty) {
		this.fsc_wndw_frame_qty = fsc_wndw_frame_qty;
	}
	public String getFsc_wndw_frame_remk() {
		return fsc_wndw_frame_remk;
	}
	public void setFsc_wndw_frame_remk(String fsc_wndw_frame_remk) {
		this.fsc_wndw_frame_remk = fsc_wndw_frame_remk;
	}
	private int idatm;
	private int bolt_screw_set_qty;
	private String bolt_screw_set_rmk;
	private int cash_casst_key_qty;
	private String cash_casst_key_rmk;
	private int clad_qty;
	private String clad_rmk;
	private int collar_qty;
	private String collar_rmk;
	private int decale_qty;
	private String decale_rmk;
	private int fsc_wndw_frame_qty;
	private String fsc_wndw_frame_remk;
	public String getChecker() {
		return checker;
	}
	public void setChecker(String checker) {
		this.checker = checker;
	}
	public String getBank() {
		return bank;
	}
	public void setBank(String bank) {
		this.bank = bank;
	}
	public String getDriver() {
		return driver;
	}
	public void setDriver(String driver) {
		this.driver = driver;
	}
	public String getWarehouse_asst() {
		return warehouse_asst;
	}
	public void setWarehouse_asst(String warehouse_asst) {
		this.warehouse_asst = warehouse_asst;
	}
	public String getConsignee() {
		return consignee;
	}
	public void setConsignee(String consignee) {
		this.consignee = consignee;
	}
	public String getPlateno() {
		return plateno;
	}
	public void setPlateno(String plateno) {
		this.plateno = plateno;
	}
	public int getCassete1() {
		return cassete1;
	}
	public void setCassete1(int cassete1) {
		this.cassete1 = cassete1;
	}
	public int getCassete2() {
		return cassete2;
	}
	public void setCassete2(int cassete2) {
		this.cassete2 = cassete2;
	}
	public int getCassete3() {
		return cassete3;
	}
	public void setCassete3(int cassete3) {
		this.cassete3 = cassete3;
	}
	public int getCassete4() {
		return cassete4;
	}
	public void setCassete4(int cassete4) {
		this.cassete4 = cassete4;
	}
	private String checker;
	private String bank;
	private String driver;
	private String warehouse_asst;
	private String consignee;
	private String plateno;
	private int cassete1;
	private int cassete2;
	private int cassete3;
	private int cassete4;
	
	private int quantity;
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	private String remarks;
	
	

	
	private int modem_qty;
	public int getModem_qty() {
		return modem_qty;
	}
	public void setModem_qty(int modem_qty) {
		this.modem_qty = modem_qty;
	}
	public String getModem_rmk() {
		return modem_rmk;
	}
	public void setModem_rmk(String modem_rmk) {
		this.modem_rmk = modem_rmk;
	}
	public int getPnl_door_key_qty() {
		return pnl_door_key_qty;
	}
	public void setPnl_door_key_qty(int pnl_door_key_qty) {
		this.pnl_door_key_qty = pnl_door_key_qty;
	}
	public String getPnl_door_key_rmk() {
		return pnl_door_key_rmk;
	}
	public void setPnl_door_key_rmk(String pnl_door_key_rmk) {
		this.pnl_door_key_rmk = pnl_door_key_rmk;
	}
	public int getPedestal_qty() {
		return pedestal_qty;
	}
	public void setPedestal_qty(int pedestal_qty) {
		this.pedestal_qty = pedestal_qty;
	}
	public String getPedestaL_rmk() {
		return pedestaL_rmk;
	}
	public void setPedestaL_rmk(String pedestaL_rmk) {
		this.pedestaL_rmk = pedestaL_rmk;
	}
	public int getPower_crd_qty() {
		return power_crd_qty;
	}
	public void setPower_crd_qty(int power_crd_qty) {
		this.power_crd_qty = power_crd_qty;
	}
	public String getPower_cord_rmk() {
		return power_cord_rmk;
	}
	public void setPower_cord_rmk(String power_cord_rmk) {
		this.power_cord_rmk = power_cord_rmk;
	}
	public int getRouter_qtry() {
		return router_qtry;
	}
	public void setRouter_qtry(int router_qtry) {
		this.router_qtry = router_qtry;
	}
	public String getRouter_rmk() {
		return router_rmk;
	}
	public void setRouter_rmk(String router_rmk) {
		this.router_rmk = router_rmk;
	}
	public int getTopper_qty() {
		return topper_qty;
	}
	public void setTopper_qty(int topper_qty) {
		this.topper_qty = topper_qty;
	}
	public String getTopper_rmk() {
		return topper_rmk;
	}
	public void setTopper_rmk(String topper_rmk) {
		this.topper_rmk = topper_rmk;
	}
	public int getUps_qty() {
		return ups_qty;
	}
	public void setUps_qty(int ups_qty) {
		this.ups_qty = ups_qty;
	}
	public String getUps_rmk() {
		return ups_rmk;
	}
	public void setUps_rmk(String ups_rmk) {
		this.ups_rmk = ups_rmk;
	}
	public int getVault_door_key_qty() {
		return vault_door_key_qty;
	}
	public void setVault_door_key_qty(int vault_door_key_qty) {
		this.vault_door_key_qty = vault_door_key_qty;
	}
	public String getVault_door_key() {
		return vault_door_key;
	}
	public void setVault_door_key(String vault_door_key) {
		this.vault_door_key = vault_door_key;
	}
	private String modem_rmk;
	private int pnl_door_key_qty;
	private String pnl_door_key_rmk;
	private int pedestal_qty;
	private String pedestaL_rmk;
	private int power_crd_qty;
	private String power_cord_rmk;
	private int router_qtry;
	private String router_rmk;
	private int topper_qty;
	private String topper_rmk;
	private int ups_qty;
	private String ups_rmk;
	private int vault_door_key_qty;
	private String vault_door_key;
	
	
	
	
	



}
