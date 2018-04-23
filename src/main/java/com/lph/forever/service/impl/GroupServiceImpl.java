package com.lph.forever.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lph.forever.mapper.GroupMapper;
import com.lph.forever.po.Group;
import com.lph.forever.po.User;
import com.lph.forever.service.GroupService;

/** 
* @author  黄军武（Ian）
* @date 创建时间：2017年12月14日 下午9:10:35
* @Function: GroupServiceImpl.java
* @version 1.0 
* @Description: 该类的功能描述
* @parameter  
* @return  
*/
@Service("groupService")
public class GroupServiceImpl implements GroupService {
	
	@Autowired
	private GroupMapper groupMapper; 

	@Override
	public Group selectByGroupName(String groupname) {
		return groupMapper.selectByGroupName(groupname);
	}

}
