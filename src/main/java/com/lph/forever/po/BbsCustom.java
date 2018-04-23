package com.lph.forever.po;
/** 
* @author  黄军武（Ian）
* @date 创建时间：2017年12月18日 上午10:26:51
* @Function: BbsCustom.java
* @version 1.0 
* @Description: 该类的功能描述
* @parameter  
* @return  
*/

import java.util.Date;

public class BbsCustom extends Bbs{	
		 private Integer groupid;
		
		 private String groupname;
		
		 private String username;
		 
		 private Integer postId;
		 
		 private String userimgpath;
		
		 private Date posttime;
		
		 private String postdetail;
		 
		 private String postname;
		 
		 private Integer agreenumber;
		 
		 private User user;
		 
		 private Group group;
		 
		 private Integer judgment;
		 

		public Integer getJudgment() {
			return judgment;
		}

		public void setJudgment(Integer judgment) {
			this.judgment = judgment;
		}

		public Integer getGroupid() {
			return groupid;
		}

		public void setGroupid(Integer groupid) {
			this.groupid = groupid;
		}

		public String getGroupname() {
			return groupname;
		}

		public void setGroupname(String groupname) {
			this.groupname = groupname;
		}

		

		public String getUsername() {
			return username;
		}

		public void setUsername(String username) {
			this.username = username;
		}
		
		

		public String getUserimgpath() {
			return userimgpath;
		}

		public void setUserimgpath(String userimgpath) {
			this.userimgpath = userimgpath;
		}

		public Date getPosttime() {
			return posttime;
		}

		public void setPosttime(Date posttime) {
			this.posttime = posttime;
		}

		public String getPostdetail() {
			return postdetail;
		}

		public void setPostdetail(String postdetail) {
			this.postdetail = postdetail;
		}

		public String getPostname() {
			return postname;
		}

		public void setPostname(String postname) {
			this.postname = postname;
		}
			

		public Integer getAgreenumber() {
			return agreenumber;
		}

		public void setAgreenumber(Integer agreenumber) {
			this.agreenumber = agreenumber;
		}

		public User getUser() {
			return user;
		}

		public void setUser(User user) {
			this.user = user;
		}

		public Group getGroup() {
			return group;
		}

		public void setGroup(Group group) {
			this.group = group;
		}

		public Integer getPostId() {
			return postId;
		}

		public void setPostId(Integer postId) {
			this.postId = postId;
		}
		 
	
		 
}
