package com.lph.forever.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lph.forever.mapper.GroupVideoMapper;
import com.lph.forever.po.GroupVideo;
import com.lph.forever.service.GroupVideoService;

@Service("groupVideoService")
public class GroupVideoServiceImpl implements GroupVideoService {
	@Autowired
	private GroupVideoMapper groupVideoMapper;

	@Override
	public ArrayList findGroupVideoByList(String groupName) {
		// TODO Auto-generated method stub
		return groupVideoMapper.findGroupVideoByList(groupName);
	}


	@Override
	public int updateByGroupName(GroupVideo groupVideo) {
		return groupVideoMapper.updateByPrimaryKeySelective(groupVideo);
		
	}
	
	@Override
	public int insertByGroupName(GroupVideo groupVideo) {
		return groupVideoMapper.insertSelective(groupVideo);
	}


	@Override
	public int findGroupVideoByName(GroupVideo groupVideo) {
		return groupVideoMapper.findGroupVideoByName(groupVideo);
	}
	
	

}
