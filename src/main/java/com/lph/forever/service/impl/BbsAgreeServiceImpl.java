package com.lph.forever.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lph.forever.mapper.BbsAgreeMapper;
import com.lph.forever.po.BbsAgree;
import com.lph.forever.service.BbsAgreeService;

/** 
* @author  黄军武（Ian）
* @date 创建时间：2017年12月19日 上午11:39:27
* @Function: BbsAgreeServiceImpl.java
* @version 1.0 
* @Description: 该类的功能描述
* @parameter  
* @return  
*/
@Service("bbsAgreeService")
public class BbsAgreeServiceImpl implements BbsAgreeService {
	@Autowired
	private BbsAgreeMapper bbsAgreeMapper;

	@Override
	public ArrayList selectByUserIdAndpostId(Integer userId, Integer postId) {
		return bbsAgreeMapper.selectByUserIdAndpostId(userId, postId);
	}

	@Override
	public int deleteByPrimaryKey(Integer userId,Integer postId) {
		return bbsAgreeMapper.deleteByPrimaryKey(userId,postId);
	}

	@Override
	public int insert(BbsAgree record) {
		return bbsAgreeMapper.insert(record);
	}

	@Override
	public ArrayList selectByUserId(Integer userId) {
		return bbsAgreeMapper.selectByUserId(userId);
	}

}
