package com.lph.forever.service;

import java.util.ArrayList;

/** 
* @author  黄军武（Ian）
* @date 创建时间：2017年12月25日 上午11:10:19
* @Function: BbsMsgAgreeService.java
* @version 1.0 
* @Description: BbsMsgAgree事务层
* @parameter  
* @return  
*/
public interface BbsMsgAgreeService {
	
	public ArrayList selectBymsgIdAnduserId(Integer msgId,Integer userId);
	
	public int deleteByPrimaryKey(Integer msgid, Integer userid);

}
