package com.lph.forever.mapper;

import com.lph.forever.po.GroupVideoMsgReply;

public interface GroupVideoMsgReplyMapper {
    int deleteByPrimaryKey(Integer replyid);

    int insert(GroupVideoMsgReply record);

    int insertSelective(GroupVideoMsgReply record);

    GroupVideoMsgReply selectByPrimaryKey(Integer replyid);

    int updateByPrimaryKeySelective(GroupVideoMsgReply record);

    int updateByPrimaryKey(GroupVideoMsgReply record);
}