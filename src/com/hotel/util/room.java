package com.hotel.util;

public class room {
	int id;
	int roomNumber;//
	String roomType;//
	String status;//
	String checkInDate;//
	String guestName;//
	String phonenumber;//
	int normalPrice;//
	int memberPrice;//

	public room() {
	}

	public room(int roomNumber, String roomType, String guestName, String phonenumber, String checkInDate,
			int normalPrice, int memberPrice, String status) {
		this.roomNumber = roomNumber;
		this.roomType = roomType;
		this.guestName = guestName;
		this.checkInDate = checkInDate;
		this.phonenumber = phonenumber;
		this.normalPrice = normalPrice;
		this.memberPrice = memberPrice;
		this.status = status;
	}

	public room(int id, int roomNumber, String roomType, String guestName, String phonenumber, String checkInDate,
			int normalPrice, int memberPrice, String status) {
		this.id = id;
		this.roomNumber = roomNumber;
		this.roomType = roomType;
		this.guestName = guestName;
		this.checkInDate = checkInDate;
		this.phonenumber = phonenumber;
		this.normalPrice = normalPrice;
		this.memberPrice = memberPrice;
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getRoomNumber() {
		return roomNumber;
	}

	public void setRoomNumber(int roomNumber) {
		this.roomNumber = roomNumber;
	}

	public String getRoomType() {
		return roomType;
	}

	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getCheckInDate() {
		return checkInDate;
	}

	public void setCheckInDate(String checkInDate) {
		this.checkInDate = checkInDate;
	}

	public String getGuestName() {
		return guestName;
	}

	public void setGuestName(String guestName) {
		this.guestName = guestName;
	}

	public int getNormalPrice() {
		return normalPrice;
	}

	public void setNormalPrice(int normalPrice) {
		this.normalPrice = normalPrice;
	}

	public int getMemberPrice() {
		return memberPrice;
	}

	public void setMemberPrice(int memberPrice) {
		this.memberPrice = memberPrice;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

}
