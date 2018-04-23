package com.lph.forever.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lph.forever.mapper.UserInfoMapper;
import com.lph.forever.po.User;
import com.lph.forever.po.UserInfo;
import com.lph.forever.service.UserInfoService;

@Service("userInfoService")
public class UserInfoServiceImpl implements UserInfoService {

	@Autowired
	private UserInfoMapper userInfoMapper;
	
	@Override
	public int insert(UserInfo userInfo) {
		return userInfoMapper.insertSelective(userInfo);
	}

	@Override
	public int update(UserInfo rocored) {
		return userInfoMapper.updateByPrimaryKeySelective(rocored);
	}

	@Override
	public UserInfo selcet(User user) {
		return userInfoMapper.selectByUserId(user);
	}

	@Override
	public UserInfo findUserId(int userId) {
		return userInfoMapper.selectByPrimaryKey(userId);
	}

}
