package com.lph.forever.po;

public class UserInfoCostom {
	private int userid;
	private String education;
	private String userhobby;
	private String adress;
	private String phone;
	private Boolean sex;
	private User user;

	public Boolean getSex() {
		return sex;
	}

	public void setSex(Boolean sex) {
		this.sex = sex;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(Integer userId) {
		this.userid = userId;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getUserhobby() {
		return userhobby;
	}

	public void setUserhobby(String userhobby) {
		this.userhobby = userhobby;
	}

	public String getAdress() {
		return adress;
	}

	public void setAdress(String adress) {
		this.adress = adress;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}
