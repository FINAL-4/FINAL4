package com.kh.FIFAOFFLINE.member.model.vo;

import java.sql.Date;

public class Member {
	
	private String userId;
	private String userEmail;
	private String userPwd;
	private String name;
	private int birthDay;
	private int gender;
	private	String profile;
	private String phone;	
	private String status;
	private int ACount;
	
	public Member() {
		super();
	}

	
	
	public Member(String userId, String userPwd) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
	}



	public Member(String userId, String userEmail, String userPwd, String name, int birthDay, int gender,
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
		ACount = aCount;
	}

	String getUserId() {
		return userId;
	}

	void setUserId(String userId) {
		this.userId = userId;
	}

	String getUserEmail() {
		return userEmail;
	}

	void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	String getUserPwd() {
		return userPwd;
	}

	void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	String getName() {
		return name;
	}

	void setName(String name) {
		this.name = name;
	}

	int getBirthDay() {
		return birthDay;
	}

	void setBirthDay(int birthDay) {
		this.birthDay = birthDay;
	}

	int getGender() {
		return gender;
	}

	void setGender(int gender) {
		this.gender = gender;
	}

	String getProfile() {
		return profile;
	}

	void setProfile(String profile) {
		this.profile = profile;
	}

	String getPhone() {
		return phone;
	}

	void setPhone(String phone) {
		this.phone = phone;
	}

	String getStatus() {
		return status;
	}

	void setStatus(String status) {
		this.status = status;
	}

	int getACount() {
		return ACount;
	}

	void setACount(int aCount) {
		ACount = aCount;
	}

	@Override
	public String toString() {
		return "Member [userId=" + userId + ", userEmail=" + userEmail + ", userPwd=" + userPwd + ", name=" + name
				+ ", birthDay=" + birthDay + ", gender=" + gender + ", profile=" + profile + ", phone=" + phone
				+ ", status=" + status + ", ACount=" + ACount + "]";
	}

	
	
}