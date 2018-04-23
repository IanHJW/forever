package com.lph.forever.mapper;

import com.lph.forever.po.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer userid);

    int insert(User record);

    int insertSelective(User record);

    User selectByUsername(String username);
    
    User selectByPrimaryKey(Integer userId);//根据id查询用户信息

    User selectByUserNameAndPassword(User user);//根据用户名和密码来确认登录
    
    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

}