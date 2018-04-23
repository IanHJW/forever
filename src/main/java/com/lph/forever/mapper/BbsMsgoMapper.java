package com.lph.forever.mapper;

import java.util.ArrayList;

import com.lph.forever.po.BbsMsgo;

public interface BbsMsgoMapper {
    int deleteByPrimaryKey(Integer msgoid);

    int insert(BbsMsgo record);

    int insertSelective(BbsMsgo record);//插入评论

    BbsMsgo selectByPrimaryKey(Integer msgoid);

    int updateByPrimaryKeySelective(BbsMsgo record);

    int updateByPrimaryKeyWithBLOBs(BbsMsgo record);

    int updateByPrimaryKey(BbsMsgo record);
    
    ArrayList<BbsMsgo> selectByOnepost(Integer postId);
}