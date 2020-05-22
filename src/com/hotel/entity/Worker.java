package com.hotel.entity;

public class Worker {
	private int id;
	private String name;
	private String sex;
	private String age;
	private String job;
	private String performance;

	public Worker() {
	}

	public Worker(int id, String name, String sex, String age, String job, String performance) {
		this.id = id;
		this.name = name;
		this.sex = sex;
		this.age = age;
		this.job = job;
		this.performance = performance;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getPerformance() {
		return performance;
	}

	public void setPerformance(String performance) {
		this.performance = performance;
	}

}
