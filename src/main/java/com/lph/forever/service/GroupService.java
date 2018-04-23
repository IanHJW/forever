package com.lph.forever.service;

import com.lph.forever.po.Group;
import com.lph.forever.po.User;

/** 
* @author  黄军武（Ian）
* @date 创建时间：2017年12月14日 下午9:08:45
* @Function: GroupService.java
* @version 1.0 
* @Description: groupservice层
* @parameter  
* @return  
*/
public interface GroupService {
	
	public Group selectByGroupName(String groupname);//根据groupName来查询

}
