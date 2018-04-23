package com.lph.forever.mapper;

import com.lph.forever.po.GroupVideoMsg;

public interface GroupVideoMsgMapper {
    int deleteByPrimaryKey(Integer msgid);

    int insert(GroupVideoMsg record);

    int insertSelective(GroupVideoMsg record);

    GroupVideoMsg selectByPrimaryKey(Integer msgid);

    int updateByPrimaryKeySelective(GroupVideoMsg record);

    int updateByPrimaryKeyWithBLOBs(GroupVideoMsg record);

    int updateByPrimaryKey(GroupVideoMsg record);
}