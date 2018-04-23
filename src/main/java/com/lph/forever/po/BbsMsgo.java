package com.lph.forever.po;

import java.util.Date;

public class BbsMsgo {
    private Integer msgoid;

    private Integer postid;
    
    private Integer postId;

    private String username;

    private Date msgtime;

    private Integer agreetime;
    
    private String userimgpath;
    
    private String groupname;

    private String msg;
    


	public Integer getMsgoid() {
        return msgoid;
    }

    public void setMsgoid(Integer msgoid) {
        this.msgoid = msgoid;
    }

    public Integer getPostid() {
        return postid;
    }

    public void setPostid(Integer postid) {
        this.postid = postid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public Date getMsgtime() {
        return msgtime;
    }

    public void setMsgtime(Date msgtime) {
        this.msgtime = msgtime;
    }

    public Integer getAgreetime() {
        return agreetime;
    }

    public void setAgreetime(Integer agreetime) {
        this.agreetime = agreetime;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg == null ? null : msg.trim();
    }

	public String getUserimgpath() {
		return userimgpath;
	}

	public void setUserimgpath(String userimgpath) {
		this.userimgpath = userimgpath;
	}

	public String getGroupname() {
		return groupname;
	}

	public void setGroupname(String groupname) {
		this.groupname = groupname;
	}

	public Integer getPostId() {
		return postId;
	}

	public void setPostId(Integer postId) {
		this.postId = postId;
	}
    
    
}