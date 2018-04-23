package com.lph.forever.service;

import com.lph.forever.po.User;
import com.lph.forever.po.UserInfoCostom;

public interface UserInfoCostomService {
	public UserInfoCostom selcetUserInfoCostom(String username,String password);// 根据用户名和密码查询用户信息
	public UserInfoCostom selcetUserId(int userId);//根据用户id查询用户信息
	public String updateUserInfoCostom(UserInfoCostom userInfoCostom);// 更新用户信息
	public UserInfoCostom selcetUserInfoCostom(User user);
}
