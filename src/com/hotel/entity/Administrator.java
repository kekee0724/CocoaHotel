package com.hotel.entity;

public class Administrator {
	private int id;
	private String adName;
	private String password;
	private String sex;
	private String age;

	public Administrator() {

	}

	public Administrator(int id, String adName, String password, String sex, String age) {
		this.id = id;
		this.adName = adName;
		this.password = password;
		this.sex = sex;
		this.age = age;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAdName() {
		return adName;
	}

	public void setAdName(String adName) {
		this.adName = adName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

}
