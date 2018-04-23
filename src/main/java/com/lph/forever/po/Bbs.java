package com.lph.forever.po;

import java.util.Date;

public class Bbs {
    private Integer postid;

    private Integer groupid;

    private String postname;

    private String username;

    private Date posttime;
    
    private Integer agreenumber;

    private String postdetail;
    
    private Group group;

    public Group getGroup() {
		return group;
	}

	public void setGroup(Group group) {
		this.group = group;
	}

	public Integer getPostid() {
        return postid;
    }

    public void setPostid(Integer postid) {
        this.postid = postid;
    }

    public Integer getGroupid() {
        return groupid;
    }

    public void setGroupid(Integer groupid) {
        this.groupid = groupid;
    }

    public String getPostname() {
        return postname;
    }

    public void setPostname(String postname) {
        this.postname = postname == null ? null : postname.trim();
    }

   
    public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
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
        this.postdetail = postdetail == null ? null : postdetail.trim();
    }

	public Integer getAgreenumber() {
		return agreenumber;
	}

	public void setAgreenumber(Integer agreenumber) {
		this.agreenumber = agreenumber;
	}
    
}