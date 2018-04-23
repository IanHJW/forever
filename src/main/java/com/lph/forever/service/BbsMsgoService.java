package com.lph.forever.service;

import java.util.ArrayList;

import com.lph.forever.po.BbsMsgo;

/** 
* @author  黄军武（Ian）
* @date 创建时间：2017年12月25日 下午4:51:42
* @Function: BbsMsgoService.java
* @version 1.0 
* @Description: BbsMsgo事务层
* @parameter  
* @return  
*/
public interface BbsMsgoService {
	public ArrayList selectByOnepost(Integer postId);
	
	public int insertSelective(BbsMsgo record);
	
}
