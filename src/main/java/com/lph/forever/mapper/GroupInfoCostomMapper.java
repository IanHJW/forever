package com.lph.forever.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lph.forever.po.BbsCustom;
import com.lph.forever.po.GroupInfoCostom;
import com.lph.forever.po.User;

public interface GroupInfoCostomMapper {
	 GroupInfoCostom selectByGroupName(User user);//根据user表中族名查询家族信息

//	 public  List<BbsCustom>   selectByGroupIdAndGrorpNameList(@Param("groupId") Integer groupId,@Param("groupName")String groupName );
}
