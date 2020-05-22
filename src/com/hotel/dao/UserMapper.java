package com.hotel.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.hotel.entity.User;

@Repository("userMapper")
public interface UserMapper {
	public int save(User user);

	public int delete(int id);

	public int update(User user);

	public User findById(int id);

	public List<User> findAll();

	public User findByNameAndPwd(@Param("userid")String userid, @Param("pwd")String pwd);
}
