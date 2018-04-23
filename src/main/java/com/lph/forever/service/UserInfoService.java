package com.lph.forever.service;

import com.lph.forever.po.User;
import com.lph.forever.po.UserInfo;

public interface UserInfoService {
	public int insert(UserInfo userInfo);
	public int update(UserInfo rocored);
	public UserInfo selcet(User user);
	public UserInfo findUserId(int userId);

}
