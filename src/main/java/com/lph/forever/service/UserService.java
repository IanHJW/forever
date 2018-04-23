package com.lph.forever.service;

import com.lph.forever.po.User;

public interface UserService {
	public User findUserById(int userId);//根据id查找用户信息
	public String findUserByName(String username);
	public User selectByUsername(String username);//根据用户名查询用户信息
	public User validate(User user);//登录验证
	public int insert(User record);//注册		
	public int update(User user);//更新用户信息
}
