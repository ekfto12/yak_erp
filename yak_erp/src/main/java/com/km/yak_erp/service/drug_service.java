package com.km.yak_erp.service;

import java.util.List;


import com.km.yak_erp.vo.Business;
import com.km.yak_erp.vo.Drug;

public interface drug_service {
	
	//List<Business> list() throws Exception;
	
	public int count() throws Exception;
	
	public List<Drug> listPage(int displayPost, int postNum,String keyword) throws Exception;	
	
	public int searchcount(String keyword) throws Exception;

	}

