package com.lph.forever.service;
/** 
* @author  黄军武（Ian）
* @date 创建时间：2017年12月18日 上午11:00:09
* @Function: BbsCustomService.java
* @version 1.0 
* @Description: 该类的功能描述
* @parameter  
* @return  
*/

import java.util.ArrayList;

public interface BbsCustomService {

	public ArrayList selectByGroupIdAndGrorpNameList(Integer groupId, String groupName);//家族论坛
	
	public ArrayList findTouristBbs();//游客论坛
}
