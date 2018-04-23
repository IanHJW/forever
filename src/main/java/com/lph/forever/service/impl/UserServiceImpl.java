package com.lph.forever.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lph.forever.mapper.UserMapper;
import com.lph.forever.po.User;
import com.lph.forever.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;

	@Override
	public User findUserById(int userId) {
		return userMapper.selectByPrimaryKey(userId);
	}

	@Override
	public User validate(User user) {
		return userMapper.selectByUserNameAndPassword(user);
	}

	@Override
	public int insert(User record) {
		return userMapper.insert(record);
	}

	@Override
	public int update(User user) {
		return userMapper.updateByPrimaryKeySelective(user);
	}

	@Override
	public String findUserByName(String username) {
		// TODO Auto-generated method stub
		User user = userMapper.selectByUsername(username);
		if (user != null) {
			return "ERROR";
		}
		return "SUCCESS";
	}

	@Override
	public User selectByUsername(String username) {
		return userMapper.selectByUsername(username);
	}

	
}
