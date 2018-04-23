package com.lph.forever.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.lph.forever.po.Bbs;

public interface BbsMapper {
    int deleteByPrimaryKey(Integer postid);

    int insert(Bbs record);

    //插入话题
    int insertSelective(Bbs record);

   //根据文章id查询数据
    Bbs selectByPrimaryKey(Integer postId);
    
    ArrayList<Bbs> selectByGroupIdList(@Param("groupId") Integer groupId,@Param("groupName") String groupName);//根据groupID和groupname来查询

  //根据论坛消息id更新数据
    int updateByPrimaryKeySelective(Bbs record);

    int updateByPrimaryKeyWithBLOBs(Bbs record);

    int updateByPrimaryKey(Bbs record);
}