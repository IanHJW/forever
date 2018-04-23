package com.lph.forever.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lph.forever.mapper.BbsMsgReplyMapper;
import com.lph.forever.po.BbsMsgReply;
import com.lph.forever.service.BbsMsgReplyService;

/** 
* @author  黄军武（Ian）
* @date 创建时间：2017年12月25日 上午10:34:50
* @Function: BBSMsgReplyServiceImpl.java
* @version 1.0 
* @Description: 该类的功能描述
* @parameter  
* @return  
*/
@Service("bbsMsgReplyService")
public class BbsMsgReplyServiceImpl  implements BbsMsgReplyService{
	@Autowired
	private BbsMsgReplyMapper bbsMsgReplyMapper;

	@Override
	public int insert(BbsMsgReply record) {
		return bbsMsgReplyMapper.insert(record);
	}

}
