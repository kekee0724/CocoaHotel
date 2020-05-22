package com.hotel.entity;

public class Customer {
	private int pk;
	private String userid;
	private String pwd;
	private int c_type_id;
	private String m_id;
	private String m_name;
	private String sex;
	private String zj_no;
	private String m_tel;
	private String remark;
	public int getPk() {
		return pk;
	}
	public void setPk(int pk) {
		this.pk = pk;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
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
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getZj_no() {
		return zj_no;
	}
	public void setZj_no(String zj_no) {
		this.zj_no = zj_no;
	}
	public String getM_tel() {
		return m_tel;
	}
	public void setM_tel(String m_tel) {
		this.m_tel = m_tel;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	@Override
	public String toString() {
		return "Customer [pk=" + pk + ", userid=" + userid + ", pwd=" + pwd + ", c_type_id=" + c_type_id + ", m_id="
				+ m_id + ", m_name=" + m_name + ", sex=" + sex + ", zj_no=" + zj_no + ", m_tel=" + m_tel + ", remark="
				+ remark + "]";
	}
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Customer(int pk, String userid, String pwd, int c_type_id, String m_id, String m_name, String sex,
			String zj_no, String m_tel, String remark) {
		super();
		this.pk = pk;
		this.userid = userid;
		this.pwd = pwd;
		this.c_type_id = c_type_id;
		this.m_id = m_id;
		this.m_name = m_name;
		this.sex = sex;
		this.zj_no = zj_no;
		this.m_tel = m_tel;
		this.remark = remark;
	}
	public Customer(String userid, String pwd, int c_type_id, String m_id, String m_name, String sex,
			String zj_no, String m_tel, String remark) {
		// TODO Auto-generated constructor stub
		super();
		this.userid = userid;
		this.pwd = pwd;
		this.c_type_id = c_type_id;
		this.m_id = m_id;
		this.m_name = m_name;
		this.sex = sex;
		this.zj_no = zj_no;
		this.m_tel = m_tel;
		this.remark = remark;
	}
	
}
