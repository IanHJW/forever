package com.lph.forever.service;

import java.util.List;

import com.lph.forever.po.BbsCustom;
import com.lph.forever.po.GroupInfoCostom;
import com.lph.forever.po.User;

public interface GroupInfoCostomService {
	public GroupInfoCostom selectByGroupName(User user);//根据族名来查询家族信息
}
