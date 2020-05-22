package com.hotel.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hotel.entity.Order;

@Repository("orderMapper")
public interface OrderMapper {
	public int save(Order order);

	public int delete(int pk);

	public int update(Order order);

	public Order findByPk(int pk);

	public List<Order> findAll();
}
