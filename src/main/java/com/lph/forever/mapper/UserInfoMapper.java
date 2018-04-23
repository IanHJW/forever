package com.lph.forever.mapper;

import com.lph.forever.po.User;
import com.lph.forever.po.UserInfo;

public interface UserInfoMapper {
    int deleteByPrimaryKey(Integer userid);

    int insertSelective(UserInfo record);

    UserInfo selectByPrimaryKey(Integer userid);

    UserInfo selectByUserId(User userid);//通过id返回用户实例
    
    int updateByPrimaryKeySelective(UserInfo record);

    int updateByPrimaryKey(UserInfo record);
}