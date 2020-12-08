package com.km.yak_erp.service;

import java.util.List;


import com.km.yak_erp.vo.Business;

public interface business_service {
	
	//List<Business> list() throws Exception;
	
	public int count() throws Exception;
	
	public List<Business> listPage(int displayPost, int postNum,String keyword) throws Exception;	
	
	public int searchcount(String keyword) throws Exception;
}
