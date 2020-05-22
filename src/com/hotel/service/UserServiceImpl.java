package com.hotel.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hotel.dao.UserMapper;
import com.hotel.entity.User;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Resource(name = "userMapper")
	private UserMapper userMapper;

	@Override
	public int save(User user) {
		// TODO Auto-generated method stub
		return userMapper.save(user);
	}

	@Override
	public int delete(int id) {
		// TODO Auto-generated method stub
		return userMapper.delete(id);
	}

	@Override
	public int update(User user) {
		// TODO Auto-generated method stub
		return userMapper.update(user);
	}

	@Override
	public User findById(int id) {
		// TODO Auto-generated method stub
		return userMapper.findById(id);
	}

	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return userMapper.findAll();
	}

	@Override
	public User findByNameAndPwd(String userid, String pwd) {
		// TODO Auto-generated method stub
		return userMapper.findByNameAndPwd(userid,pwd);
	}
}
