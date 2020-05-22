package com.hotel.entity;

public class Order {
	private int pk;
	private int c_type_id;
	private String m_id;
	private int r_type_id;
	private String r_no;
	private String ord_time;
	private String remark;
	public int getPk() {
		return pk;
	}
	public void setPk(int pk) {
		this.pk = pk;
	}
	public int getC_type_id() {
		return c_type_id;
	}
	public void setC_type_id(int c_type_id) {
		this.c_type_id = c_type_id;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public int getR_type_id() {
		return r_type_id;
	}
	public void setR_type_id(int r_type_id) {
		this.r_type_id = r_type_id;
	}
	public String getR_no() {
		return r_no;
	}
	public void setR_no(String r_no) {
		this.r_no = r_no;
	}
	public String getOrd_time() {
		return ord_time;
	}
	public void setOrd_time(String ord_time) {
		this.ord_time = ord_time;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public Order() {
		super();
	}
	public Order(int c_type_id, String m_id, int r_type_id, String r_no,
			String ord_time, String remark) {
		super();
		this.c_type_id = c_type_id;
		this.m_id = m_id;
		this.r_type_id = r_type_id;
		this.r_no = r_no;
		this.ord_time = ord_time;
		this.remark = remark;
	}
	
}
