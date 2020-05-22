package com.hotel.service;

import java.util.List;

import com.hotel.entity.User;

public interface UserService {
	public int save(User user);

	public int delete(int id);

	public int update(User user);

	public User findById(int id);

	public List<User> findAll();

	public User findByNameAndPwd(String userid, String pwd);
}
