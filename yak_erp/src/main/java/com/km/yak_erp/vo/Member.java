package com.km.yak_erp.vo;

import java.sql.Date;

import lombok.Data;


public class Member {
	private String MEMBER_ID;
	private String MEMBER_PW;
	private String MEMBER_NAME;
	private Date MEMBER_BORN_DATE;
	private String MEMBER_GENDER;
	private String MEMBER_EMAIL;
	private String MEMBER_COMMENT;
	private Date MEMBER_JOIN_DATE;
	
	public String getMEMBER_COMMENT() {
		return MEMBER_COMMENT;
	}
	public void setMEMBER_COMMENT(String mEMBER_COMMENT) {
		MEMBER_COMMENT = mEMBER_COMMENT;
	}
	
	public boolean matchPassword(String MEMBER_PW) {
		System.out.println(MEMBER_PW);
		System.out.println(this.MEMBER_PW);
        return this.MEMBER_PW.equals(MEMBER_PW);
    }
	public String getMEMBER_ID() {
		return MEMBER_ID;
	}
	public void setMEMBER_ID(String mEMBER_ID) {
		MEMBER_ID = mEMBER_ID;
	}
	public String getMEMBER_PW() {
		return MEMBER_PW;
	}
	public void setMEMBER_PW(String mEMBER_PW) {
		MEMBER_PW = mEMBER_PW;
	}
	public String getMEMBER_NAME() {
		return MEMBER_NAME;
	}
	public void setMEMBER_NAME(String mEMBER_NAME) {
		MEMBER_NAME = mEMBER_NAME;
	}
	public Date getMEMBER_BORN_DATE() {
		return MEMBER_BORN_DATE;
	}
	public void setMEMBER_BORN_DATE(Date mEMBER_BORN_DATE) {
		MEMBER_BORN_DATE = mEMBER_BORN_DATE;
	}
	public String getMEMBER_GENDER() {
		return MEMBER_GENDER;
	}
	public void setMEMBER_GENDER(String mEMBER_GENDER) {
		MEMBER_GENDER = mEMBER_GENDER;
	}
	public String getMEMBER_EMAIL() {
		return MEMBER_EMAIL;
	}
	public void setMEMBER_EMAIL(String mEMBER_EMAIL) {
		MEMBER_EMAIL = mEMBER_EMAIL;
	}
	public Date getMEMBER_JOIN_DATE() {
		return MEMBER_JOIN_DATE;
	}
	public void setMEMBER_JOIN_DATE(Date mEMBER_JOIN_DATE) {
		MEMBER_JOIN_DATE = mEMBER_JOIN_DATE;
	}
}
