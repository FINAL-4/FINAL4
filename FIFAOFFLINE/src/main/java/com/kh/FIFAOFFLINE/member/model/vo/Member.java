package com.kh.FIFAOFFLINE.member.model.vo;

import java.sql.Date;

public class Member {
	
	private String userId;
	private String userEmail;
	private String userPwd;
	private String name;
	private int birthDay;
	private String gender;
	private	String profile;
	private String phone;	
	private String status;
	private int aCount;
	
	public Member() {
		super();
	}

	public Member(String userId, String userEmail, String userPwd, String name, int birthDay, String gender,
			String profile, String phone, String status, int aCount) {
		super();
		this.userId = userId;
		this.userEmail = userEmail;
		this.userPwd = userPwd;
		this.name = name;
		this.birthDay = birthDay;
		this.gender = gender;
		this.profile = profile;
		this.phone = phone;
		this.status = status;
		this.aCount = aCount;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getBirthDay() {
		return birthDay;
	}

	public void setBirthDay(int birthDay) {
		this.birthDay = birthDay;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getaCount() {
		return aCount;
	}

	public void setaCount(int aCount) {
		this.aCount = aCount;
	}

	@Override
	public String toString() {
		return "Member [userId=" + userId + ", userEmail=" + userEmail + ", userPwd=" + userPwd + ", name=" + name
				+ ", birthDay=" + birthDay + ", gender=" + gender + ", profile=" + profile + ", phone=" + phone
				+ ", status=" + status + ", aCount=" + aCount + "]";
	}

	
	

	
	
}