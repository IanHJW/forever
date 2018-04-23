package com.lph.forever.service.impl;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lph.forever.mapper.BbsMapper;
import com.lph.forever.po.Bbs;
import com.lph.forever.service.BbsService;

/** 
* @author  黄军武（Ian）
* @date 创建时间：2017年12月14日 下午9:37:55
* @Function: BbsServiceImpl.java
* @version 1.0 
* @Description: 该类的功能描述
* @parameter  
* @return  
*/
@Service("bbsService")
public class BbsServiceImpl implements BbsService{
	@Autowired
	private BbsMapper bbsMapper;

	@Override
	public ArrayList selectByGroupIdList( Integer groupId,String groupName) {
		return bbsMapper.selectByGroupIdList(groupId, groupName);
	}

	@Override
	public Bbs selectByPrimaryKey(Integer postId) {
		return bbsMapper.selectByPrimaryKey(postId);
	}

	@Override
	public int updateByPrimaryKeySelective(Bbs record) {
		return bbsMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int insertSelective(Bbs record) {
		return bbsMapper.insertSelective(record);
	}



}
