package com.lph.forever.po;

import java.util.Date;

public class VideoInfoCostom {
	private Integer videoid;

    private String groupname;

    private String videoname;

    private String videopath;

    private Date upload;

    private Integer viewtime;
    
    private User user;

	public Integer getVideoid() {
		return videoid;
	}

	public void setVideoid(Integer videoid) {
		this.videoid = videoid;
	}

	public String getGroupname() {
		return groupname;
	}

	public void setGroupname(String groupname) {
		this.groupname = groupname;
	}

	public String getVideoname() {
		return videoname;
	}

	public void setVideoname(String videoname) {
		this.videoname = videoname;
	}

	public String getVideopath() {
		return videopath;
	}

	public void setVideopath(String videopath) {
		this.videopath = videopath;
	}

	public Date getUpload() {
		return upload;
	}

	public void setUpload(Date upload) {
		this.upload = upload;
	}

	public Integer getViewtime() {
		return viewtime;
	}

	public void setViewtime(Integer viewtime) {
		this.viewtime = viewtime;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	
    

}
