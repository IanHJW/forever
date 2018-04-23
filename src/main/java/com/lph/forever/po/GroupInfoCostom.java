package com.lph.forever.po;

import java.util.List;

public class GroupInfoCostom {
	private Integer groupid;

    private String groupname;

    private String groupimgpath;

    private String groupintruduce;

    private Boolean groupvideopower;

    private String groupnumber;    
    
    private String userimgpath;
    
    private User user;
    
    private List<BbsCustom> bbsCustom;


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

	public String getGroupimgpath() {
		return groupimgpath;
	}

	public void setGroupimgpath(String groupimgpath) {
		this.groupimgpath = groupimgpath;
	}

	public String getGroupintruduce() {
		return groupintruduce;
	}

	public void setGroupintruduce(String groupintruduce) {
		this.groupintruduce = groupintruduce;
	}

	public Boolean getGroupvideopower() {
		return groupvideopower;
	}

	public void setGroupvideopower(Boolean groupvideopower) {
		this.groupvideopower = groupvideopower;
	}

	public String getGroupnumber() {
		return groupnumber;
	}

	public void setGroupnumber(String groupnumber) {
		this.groupnumber = groupnumber;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<BbsCustom> getBbsCustom() {
		return bbsCustom;
	}

	public void setBbsCustom(List<BbsCustom> bbsCustom) {
		this.bbsCustom = bbsCustom;
	}

	public String getUserimgpath() {
		return userimgpath;
	}

	public void setUserimgpath(String userimgpath) {
		this.userimgpath = userimgpath;
	}

	
    

}
