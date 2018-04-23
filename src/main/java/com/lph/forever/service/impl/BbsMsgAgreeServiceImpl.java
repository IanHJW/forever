package com.lph.forever.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lph.forever.mapper.BbsMsgAgreeMapper;
import com.lph.forever.service.BbsMsgAgreeService;

/** 
* @author  黄军武（Ian）
* @date 创建时间：2017年12月25日 上午11:11:46
* @Function: BbsMsgAgreeServiceImpl.java
* @version 1.0 
* @Description: 该类的功能描述
* @parameter  
* @return  
*/
@Service("bbsMsgAgreeService")
public class BbsMsgAgreeServiceImpl implements BbsMsgAgreeService {
	@Autowired
	private BbsMsgAgreeMapper bbsMsgAgreeMapper; 

	@Override
	public ArrayList selectBymsgIdAnduserId(Integer msgId, Integer userId) {
		return bbsMsgAgreeMapper.selectBymsgIdAnduserId(msgId, userId);
	}

	@Override
	public int deleteByPrimaryKey(Integer msgid, Integer userid) {
		return bbsMsgAgreeMapper.deleteByPrimaryKey(msgid,userid);
	}

}
