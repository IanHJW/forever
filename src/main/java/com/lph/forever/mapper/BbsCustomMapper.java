package com.lph.forever.mapper;
/** 
* @author  黄军武（Ian）
* @date 创建时间：2017年12月18日 上午10:39:16
* @Function: BbsCustomMapper.java
* @version 1.0 
* @Description: 该类的功能描述
* @parameter  
* @return  
*/

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.lph.forever.po.BbsCustom;

public interface BbsCustomMapper {
	
	ArrayList<BbsCustom> selectByGroupIdAndGrorpNameList(@Param("groupId") Integer groupId,@Param("groupName") String groupName);
	
//	ArrayList<BbsCustom> selectByGroupIdAndGrorpNameList(@Param("group") GroupInfoCostom groupInfo);
	
	ArrayList<BbsCustom> findTouristBbs();//游客观看bbs

}
