package com.hotel.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.hotel.entity.Customer;

@Repository("customerMapper")
public interface CustomerMapper {
	public int save(Customer customer);

	public int delete(int pk);

	public int update(Customer customer);

	public Customer findByPk(int pk);

	public List<Customer> findAll();

	public Customer findByNameAndPwd(@Param("userid")String userid, @Param("pwd")String pwd);
}
