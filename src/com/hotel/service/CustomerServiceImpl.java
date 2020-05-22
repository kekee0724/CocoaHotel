package com.hotel.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hotel.dao.CustomerMapper;
import com.hotel.entity.Customer;

@Service("customerService")
public class CustomerServiceImpl implements CustomerService {
	@Resource(name = "customerMapper")
	private CustomerMapper customerMapper;

	@Override
	public int save(Customer customer) {
		// TODO Auto-generated method stub
		return customerMapper.save(customer);
	}

	@Override
	public int delete(int pk) {
		// TODO Auto-generated method stub
		return customerMapper.delete(pk);
	}

	@Override
	public int update(Customer customer) {
		// TODO Auto-generated method stub
		return customerMapper.update(customer);
	}

	@Override
	public Customer findByPk(int pk) {
		// TODO Auto-generated method stub
		return customerMapper.findByPk(pk);
	}

	@Override
	public List<Customer> findAll() {
		// TODO Auto-generated method stub
		return customerMapper.findAll();
	}

	@Override
	public Customer findByNameAndPwd(String userid, String pwd) {
		// TODO Auto-generated method stub
		return customerMapper.findByNameAndPwd(userid,pwd);
	}

}
