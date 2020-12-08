package com.km.yak_erp.service;

import java.util.List;

import com.km.yak_erp.vo.Bqlist;
import com.km.yak_erp.vo.Qlist;


public interface qlist_service {
	
	//List<Business> list() throws Exception;
	
	public int count() throws Exception;
	
	public List<Qlist> listPage(int displayPost, int postNum,String keyword) throws Exception;	

	public int searchcount(String keyword) throws Exception;
}
