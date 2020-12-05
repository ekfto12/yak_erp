package com.km.yak_erp.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class Business {
	public int bno;
	public String company_name;
	public String owner_name;
	private String company_addr;
	private String c_comment;
	private String manager_id;
	private String manager_name;
	private String contact;
	private String email;
	
	
}
