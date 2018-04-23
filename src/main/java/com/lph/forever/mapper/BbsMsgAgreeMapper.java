package com.lph.forever.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.lph.forever.po.BbsMsgAgree;

public interface BbsMsgAgreeMapper {
	//删除记录
    int deleteByPrimaryKey(@Param("msgid") Integer msgid, @Param("userid") Integer userid);

    int insert(BbsMsgAgree record);

    int insertSelective(BbsMsgAgree record);

    BbsMsgAgree selectByPrimaryKey(Integer msgid);

    int updateByPrimaryKeySelective(BbsMsgAgree record);

    int updateByPrimaryKey(BbsMsgAgree record);
    
    //查询
    ArrayList<BbsMsgAgree> selectBymsgIdAnduserId(@Param("msgId") Integer msgId, @Param("userId") Integer userId);
}