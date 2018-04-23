package com.lph.forever.po;

public class Group {
    private Integer groupid;

    private String groupname;

    private String groupimgpath;

    private String groupintruduce;

    private Boolean groupvideopower;

    private String groupnumber;    

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
        this.groupname = groupname == null ? null : groupname.trim();
    }

    public String getGroupimgpath() {
        return groupimgpath;
    }

    public void setGroupimgpath(String groupimgpath) {
        this.groupimgpath = groupimgpath == null ? null : groupimgpath.trim();
    }

    public String getGroupintruduce() {
        return groupintruduce;
    }

    public void setGroupintruduce(String groupintruduce) {
        this.groupintruduce = groupintruduce == null ? null : groupintruduce.trim();
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
        this.groupnumber = groupnumber == null ? null : groupnumber.trim();
    }
}