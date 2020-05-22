package com.hotel.service;

import java.util.List;

import com.hotel.entity.Customer;

public interface CustomerService {
	public int save(Customer customer);

	public int delete(int pk);

	public int update(Customer customer);

	public Customer findByPk(int pk);

	public List<Customer> findAll();

	public Customer findByNameAndPwd(String userid, String pwd);
}
