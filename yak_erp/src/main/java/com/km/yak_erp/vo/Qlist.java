package com.km.yak_erp.vo;

import java.sql.Date;

import lombok.Data;
import oracle.sql.DATE;

@Data
public class Qlist {
	private int qno;
	private String member_id;
	private String ques_subject;
	private String ques_question;
	private Date ques_date;
	private String rnum;
	
	
}
