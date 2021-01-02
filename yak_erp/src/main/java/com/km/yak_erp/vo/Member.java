package com.km.yak_erp.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class Member {
<<<<<<< HEAD
	private String MEMBER_ID;
	private String MEMBER_PW;
	private String MEMBER_NAME;
	private Date MEMBER_BORN_DATE;
	private String MEMBER_GENDER;
	private String MEMBER_EMAIL;
	private String MEMBER_COMMENT;
	private Date MEMBER_JOIN_DATE;
	private int mno;
	private String rnum;
	
	public String getRnum() {
		return rnum;
	}
	public void setRnum(String rnum) {
		this.rnum = rnum;
	}
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
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
=======
	private String member_id;
	private String member_pw;
	private String member_name;
	private Date member_born_date;
	private String member_phone;
	private String member_comment;
	private Date member_join_date;
	private String rnum;
	private int mno;
	public boolean matchPassword(String pw) {
        return this.member_pw.equals(pw);
>>>>>>> c4d266d2a62279a024472eb8266d8a5db6e66c54
    }

	
}
