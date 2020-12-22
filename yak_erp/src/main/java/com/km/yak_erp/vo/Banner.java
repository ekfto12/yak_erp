package com.km.yak_erp.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class Banner {
	private String ban_name;
	private String company_name;
	private Date ban_start;
	private Date ban_exit;
	private int price;
	private String img_dir;
	private String img_dirr;
	private int ban_num;
	private String state;
	private String rnum;
	
	
}
