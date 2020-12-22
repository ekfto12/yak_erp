package com.km.yak_erp.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class Member {
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
    }

	
}
