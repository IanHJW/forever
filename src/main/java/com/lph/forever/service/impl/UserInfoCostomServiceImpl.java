package com.lph.forever.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lph.forever.mapper.UserInfoCostomMapper;
import com.lph.forever.po.User;
import com.lph.forever.po.UserInfoCostom;
import com.lph.forever.service.UserInfoCostomService;

@Service("userInfoCostomService")
public class UserInfoCostomServiceImpl implements UserInfoCostomService {
	@Autowired
	private UserInfoCostomMapper userInfoCostomMapper;

	private String ERROR = "更新失败";
	private String SUCCESS = "更新成功";

	@Override
	public UserInfoCostom selcetUserInfoCostom(String username, String password) {
		ArrayList<UserInfoCostom> user = userInfoCostomMapper.selcetUserInfoCostom();
		for (UserInfoCostom userInfoCostom : user) {
			if (userInfoCostom.getUser().getPassword().equals(password)
					& userInfoCostom.getUser().getUsername().equals(username)) {
				return userInfoCostom;
			}
		}
		return null;
	}
	
	@Override
	public UserInfoCostom selcetUserInfoCostom(User user) {
		ArrayList<UserInfoCostom> userInfo = userInfoCostomMapper.selcetUserInfoCostom();
		for (UserInfoCostom userInfoCostom : userInfo) {
			if (userInfoCostom.getUser().getPassword().equals(user.getPassword())
					& userInfoCostom.getUser().getUsername().equals(user.getUsername())) {
				return userInfoCostom;
			}
		}
		return null;
	}

	@Override
	public String updateUserInfoCostom(UserInfoCostom userInfoCostom) {
		userInfoCostomMapper.updateUserInfoCostom(userInfoCostom);
		return SUCCESS;
	}

	@Override
	public UserInfoCostom selcetUserId(int user) {
		return userInfoCostomMapper.selcetUserId(user);
	}

}
