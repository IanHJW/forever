package com.lph.forever.service;
/** 
* @author  黄军武（Ian）
* @date 创建时间：2017年12月14日 下午9:35:39
* @Function: BbsService.java
* @version 1.0 
* @Description: BbsService（事务层）
* @parameter  
* @return  
*/

import java.util.ArrayList;

import com.lph.forever.po.Bbs;

public interface BbsService {
	
	public ArrayList selectByGroupIdList( Integer groupId, String groupName);//根据groupID和groupname来查询
	
	public Bbs selectByPrimaryKey(Integer postId);
	
	public int updateByPrimaryKeySelective(Bbs record);
	
	public int insertSelective(Bbs record);//插入话题
	
}
