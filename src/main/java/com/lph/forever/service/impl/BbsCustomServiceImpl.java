package com.lph.forever.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lph.forever.mapper.BbsCustomMapper;
import com.lph.forever.service.BbsCustomService;

/** 
* @author  黄军武（Ian）
* @date 创建时间：2017年12月18日 上午11:02:15
* @Function: BbsCustomServiceImpl.java
* @version 1.0 
* @Description: 该类的功能描述
* @parameter  
* @return  
*/
@Service("bbsCustomService")
public class BbsCustomServiceImpl implements BbsCustomService {
	@Autowired
	private BbsCustomMapper bbsCustomMapper;

	@Override
	public ArrayList selectByGroupIdAndGrorpNameList(Integer groupId, String groupName) {
		return bbsCustomMapper.selectByGroupIdAndGrorpNameList(groupId, groupName);
	}

	@Override
	public ArrayList findTouristBbs() {
		return bbsCustomMapper.findTouristBbs();
	}


}
