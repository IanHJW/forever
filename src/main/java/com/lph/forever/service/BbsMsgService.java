package com.lph.forever.service;

import java.util.ArrayList;

import com.lph.forever.po.BbsMsg;

/** 
* @author  黄军武（Ian）
* @date 创建时间：2017年12月19日 下午2:39:00
* @Function: BbsMsgService.java
* @version 1.0 
* @Description: bbsMsg表
* @parameter  
* @return  
*/
public interface BbsMsgService {
	public int insertSelective(BbsMsg record);	
	
	public int updateByPrimaryKeySelective(BbsMsg record );
		
	public ArrayList<BbsMsg> selectByTowpost(Integer msgId);
	
	public  BbsMsg selectByPrimaryKey(Integer bbsmsgid);

}
