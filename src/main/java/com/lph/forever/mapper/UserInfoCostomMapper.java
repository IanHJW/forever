package com.lph.forever.mapper;

import java.util.ArrayList;

import com.lph.forever.po.UserInfoCostom;

public interface UserInfoCostomMapper {
	public ArrayList<UserInfoCostom> selcetUserInfoCostom();//根据用户名和密码查询用户信息
	public UserInfoCostom selcetUserId(int userId);//根据用户id查询用户信息
	public void updateUserInfoCostom(UserInfoCostom userInfoCostom);//更新用户信息
}
