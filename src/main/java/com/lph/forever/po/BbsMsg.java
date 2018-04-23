package com.lph.forever.po;

import java.util.Date;

public class BbsMsg {
    private Integer bbsmsgid;

    private Integer postid;

    private String username;

    private Date msgtime;

    private Integer agreetime;

    private Integer replyid;
    
    private String userimgpath;
    
    private String groupname;

    private String msg;

    public Integer getBbsmsgid() {
        return bbsmsgid;
    }

    public void setBbsmsgid(Integer bbsmsgid) {
        this.bbsmsgid = bbsmsgid;
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

    public Integer getReplyid() {
        return replyid;
    }

    public void setReplyid(Integer replyid) {
        this.replyid = replyid;
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
	
    
}