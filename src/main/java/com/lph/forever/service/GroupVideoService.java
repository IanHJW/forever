package com.lph.forever.service;


import java.util.ArrayList;

import com.lph.forever.po.GroupVideo;

public interface GroupVideoService {

	public int updateByGroupName(GroupVideo groupVideo);//根据group里的groupname更新

	public int insertByGroupName(GroupVideo groupVideo);//根据User里的Groupname来插入数据
	
	public ArrayList findGroupVideoByList(String groupName);//根据家族id查询家族视频
	
	public int findGroupVideoByName(GroupVideo groupVideo);//根据家族视频姓名查询家族信息
}
