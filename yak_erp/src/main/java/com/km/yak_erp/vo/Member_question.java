package com.km.yak_erp.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class Member_question {
	private int qno;
	private String member_id;
	private String ques_subject;
	private String ques_question;
	private Date ques_date;
	private String rnum;
	private int status;
}
