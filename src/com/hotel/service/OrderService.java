package com.hotel.service;

import java.util.List;

import com.hotel.entity.Order;

public interface OrderService {
	public int save(Order order);

	public int delete(int pk);

	public int update(Order order);

	public Order findByPk(int pk);

	public List<Order> findAll();
}
