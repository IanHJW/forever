package com.lph.forever.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lph.forever.mapper.BbsMsgMapper;
import com.lph.forever.po.BbsMsg;
import com.lph.forever.service.BbsMsgService;

/** 
* @author  黄军武（Ian）
* @date 创建时间：2017年12月19日 下午2:40:24
* @Function: BbsMsgSerivceImpl.java
* @version 1.0 
* @Description: 该类的功能描述
* @parameter  
* @return  
*/
@Service("bbsMsgService")
public class BbsMsgSerivceImpl implements BbsMsgService{
	@Autowired
	private BbsMsgMapper bbsMsgMapper;

	

	@Override
	public int updateByPrimaryKeySelective(BbsMsg record) {
		return bbsMsgMapper.updateByPrimaryKeySelective(record);
	}


	@Override
	public int insertSelective(BbsMsg record) {
		return bbsMsgMapper.insertSelective(record);
	}

	@Override
	public BbsMsg selectByPrimaryKey(Integer bbsmsgid) {
		return bbsMsgMapper.selectByPrimaryKey(bbsmsgid);
	}


	@Override
	public ArrayList<BbsMsg> selectByTowpost(Integer msgId) {
		return bbsMsgMapper.selectByTowpost(msgId);
	}

	

}
