package com.lph.forever.mapper;

import com.lph.forever.po.Group;
import com.lph.forever.po.User;

public interface GroupMapper {
    int deleteByPrimaryKey(Integer groupid);

    int insert(Group record);

    int insertSelective(Group record);

    Group selectByPrimaryKey(Integer groupid);   //根据groupid查询group信息
    
    Group selectByGroupName(String groupname);//根据group那么来查询group信息

    int updateByPrimaryKeySelective(Group record);

    int updateByPrimaryKeyWithBLOBs(Group record);

    int updateByPrimaryKey(Group record);

}