package com.lph.forever.mapper;

import java.util.ArrayList;

import com.lph.forever.po.BbsMsg;

public interface BbsMsgMapper {
    int deleteByPrimaryKey(Integer bbsmsgid);

    int insert(BbsMsg record);

    int insertSelective(BbsMsg record);//插入评论（第一层和第二层共用）

    BbsMsg selectByPrimaryKey(Integer bbsmsgid);//根据msgid查询    

    int updateByPrimaryKeySelective(BbsMsg record);//根据论坛消息id更新数据
        
    ArrayList<BbsMsg> selectByTowpost(Integer msgId);//查询第二层回复

    int updateByPrimaryKeyWithBLOBs(BbsMsg record);

    int updateByPrimaryKey(BbsMsg record);
}