package com.lph.forever.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.lph.forever.po.BbsAgree;

public interface BbsAgreeMapper {
	//删除记录
    int deleteByPrimaryKey(@Param("userId") Integer userId, @Param("postId") Integer postId);
    
    //插入数据
    int insert(BbsAgree record);

    int insertSelective(BbsAgree record);

    BbsAgree selectByPrimaryKey(Integer userid);

    int updateByPrimaryKeySelective(BbsAgree record);

    int updateByPrimaryKey(BbsAgree record);
    
    //查詢点赞
    ArrayList<BbsAgree>  selectByUserIdAndpostId(@Param("userId") Integer userId, @Param("postId") Integer postId);
    
    ArrayList<BbsAgree> selectByUserId(Integer userId);//根据userID查询点赞条数
}