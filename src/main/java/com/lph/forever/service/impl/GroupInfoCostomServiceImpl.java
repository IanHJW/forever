package com.lph.forever.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lph.forever.mapper.GroupInfoCostomMapper;
import com.lph.forever.po.BbsCustom;
import com.lph.forever.po.GroupInfoCostom;
import com.lph.forever.po.User;
import com.lph.forever.service.GroupInfoCostomService;

@Service("groupInfoCostomService")
public class GroupInfoCostomServiceImpl implements GroupInfoCostomService {
	@Autowired
	private GroupInfoCostomMapper groupInfoCostomMapper;
	
	@Override
	public GroupInfoCostom selectByGroupName(User user) {
		return groupInfoCostomMapper.selectByGroupName(user);
	}

}
