package com.km.yak_erp.vo;

import java.sql.Date;

import lombok.Data;
import oracle.sql.DATE;

@Data
public class Bqlist {
	private int bqno;
	private String company_name;
	private String subject;
	private String question;
	private Date ques_date;
	private String rnum;
	private int status;
	
}
