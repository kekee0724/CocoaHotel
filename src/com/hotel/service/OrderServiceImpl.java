package com.hotel.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hotel.dao.OrderMapper;
import com.hotel.entity.Order;

@Service("orderService")
public class OrderServiceImpl implements OrderService {
	@Resource(name = "orderMapper")
	private OrderMapper orderMapper;

	@Override
	public int save(Order order) {
		// TODO Auto-generated method stub
		return orderMapper.save(order);
	}

	@Override
	public Order findByPk(int pk) {
		// TODO Auto-generated method stub
		return orderMapper.findByPk(pk);
	}

	@Override
	public List<Order> findAll() {
		// TODO Auto-generated method stub
		return orderMapper.findAll();
	}

	@Override
	public int delete(int pk) {
		// TODO Auto-generated method stub
		return orderMapper.delete(pk);
	}

	@Override
	public int update(Order order) {
		// TODO Auto-generated method stub
		return orderMapper.update(order);
	}
}
