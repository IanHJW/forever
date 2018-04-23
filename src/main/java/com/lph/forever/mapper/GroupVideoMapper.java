package com.lph.forever.mapper;

import java.util.ArrayList;

import com.lph.forever.po.GroupInfoCostom;
import com.lph.forever.po.GroupVideo;

public interface GroupVideoMapper {
    int deleteByPrimaryKey(Integer videoid);

    int insert(GroupVideo record);

   /* int insertSelective(GroupVideo record);*/

    GroupVideo selectByPrimaryKey(Integer videoid);

    int updateByPrimaryKeySelective(GroupVideo record);

    int updateByPrimaryKey(GroupVideo record);
    
    GroupVideo updateByPrimaryKeySelective(GroupInfoCostom group);//根据group里的groupname更新
    
    int insertSelective(GroupVideo groupVideo);//根据user里的groupname来插入
    
    ArrayList<GroupVideo> findGroupVideoByList(String groupName);//查询家族视频，装入列表，降序排列
    
    int  findGroupVideoByName(GroupVideo groupVideo);//根据家族姓名查询
}