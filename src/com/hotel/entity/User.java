package com.hotel.entity;

public class User {
	@Override
	public String toString() {
		return "User [pk=" + pk + ", userid=" + userid + ", pwd=" + pwd + "]";
	}
	private int pk;
	private String userid;
	private String pwd;
	
	private int id;
	private String userName;
	private String password;
	private String phonenumber;
	private String type;
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getRoomNumber() {
		return roomNumber;
	}

	public void setRoomNumber(String roomNumber) {
		this.roomNumber = roomNumber;
	}

	public String getRoomType() {
		return roomType;
	}

	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}

	public String getHandMan() {
		return handMan;
	}

	public void setHandMan(String handMan) {
		this.handMan = handMan;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	private String roomNumber;
	private String roomType;
	private String handMan;
	private String status;
	
	public User(int id, String userName, String password, String phonenumber, String type, String roomNumber,
			String roomType, String handMan, String status) {
		this.id = id;
		this.userName = userName;
		this.type = type;
		this.password = password;
		this.phonenumber = phonenumber;
		this.roomNumber = roomNumber;
		this.roomType = roomType;
		this.handMan = handMan;
		this.status = status;
	}

	public User(int id, String userName, String phonenumber, String roomType, String handMan) {
		this.id = id;
		this.userName = userName;
		this.handMan = handMan;
		this.roomType = roomType;
		this.phonenumber = phonenumber;
		this.setStatus("入住");
	}

//	public User(int id, String phonenumber, String roomType) {
//		this.id = id;
//		this.phonenumber = phonenumber;
//		this.roomType = roomType;
//	}
	
	
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
	public User() {
		super();
	}
	public User(String userid, String pwd) {
		super();
		this.userid = userid;
		this.pwd = pwd;
	}
	public User(int pk, String userid, String pwd) {
		super();
		this.pk = pk;
		this.userid = userid;
		this.pwd = pwd;
	}
	
}
