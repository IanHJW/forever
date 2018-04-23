package com.lph.forever.mapper;

import com.lph.forever.po.BbsMsgReply;

public interface BbsMsgReplyMapper {
    int deleteByPrimaryKey(Integer replyid);

    int insert(BbsMsgReply record);//插入

    int insertSelective(BbsMsgReply record);

    BbsMsgReply selectByPrimaryKey(Integer replyid);

    int updateByPrimaryKeySelective(BbsMsgReply record);

    int updateByPrimaryKey(BbsMsgReply record);
}