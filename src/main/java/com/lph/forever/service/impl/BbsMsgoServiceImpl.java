package com.lph.forever.service.impl;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lph.forever.mapper.BbsMsgoMapper;
import com.lph.forever.po.BbsMsgo;
import com.lph.forever.service.BbsMsgoService;

/** 
* @author  黄军武（Ian）
* @date 创建时间：2017年12月25日 下午4:52:56
* @Function: BbsMsgoServiceImpl.java
* @version 1.0 
* @Description: 该类的功能描述
* @parameter  
* @return  
*/
@Service("bbsMsgoService")
public class BbsMsgoServiceImpl implements BbsMsgoService {
	@Autowired
	private BbsMsgoMapper bbsMsgoMapper;

	@Override
	public ArrayList selectByOnepost(Integer postId) {
		return bbsMsgoMapper.selectByOnepost(postId);
	}

	@Override
	public int insertSelective(BbsMsgo record) {
		return bbsMsgoMapper.insertSelective(record);
	}
	

	

}
