package com.km.yak_erp.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class Business_question {
	private int bqno;
	private String company_name;
	private String subject;
	private String question;
	private Date ques_date;
	private String rnum;
	private int status;
}
