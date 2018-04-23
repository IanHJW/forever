package com.lph.forever.service;

import java.util.ArrayList;

import com.lph.forever.po.BbsAgree;

/** 
* @author  黄军武（Ian）
* @date 创建时间：2017年12月19日 上午11:37:58
* @Function: BbsAgreeService.java
* @version 1.0 
* @Description: 该类的功能描述
* @parameter  
* @return  
*/
public interface BbsAgreeService {
	
	public ArrayList selectByUserIdAndpostId(Integer userId, Integer postId);//查询点赞
	
	public int deleteByPrimaryKey(Integer userId, Integer postId);//删除记录
	
	public int insert(BbsAgree record);//插入数据
	
	public ArrayList  selectByUserId(Integer userId);//根据userID查询点赞条数

}
