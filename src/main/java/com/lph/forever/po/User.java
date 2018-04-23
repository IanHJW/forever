package com.lph.forever.po;

public class User {
    private Integer userid;

    private String username;

    private String password;

    private String email;

    private String userimgpath;

    private String location;

    private String groupname;

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public String getUserimgpath() {
        return userimgpath;
    }

    public void setUserimgpath(String userimgpath) {
        this.userimgpath = userimgpath == null ? null : userimgpath.trim();
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location == null ? null : location.trim();
    }

    public String getGroupname() {
        return groupname;
    }

    public void setGroupname(String groupname) {
        this.groupname = groupname == null ? null : groupname.trim();
    }
    
    public void succcess() {
    	System.out.println("成功了");
    }
}