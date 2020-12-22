package com.km.yak_erp.service;

import java.util.List;

import com.km.yak_erp.vo.Drug;

public interface drug_service {
	Drug drug_get(String id) throws Exception;
	int drug_add(Drug vo) throws Exception;
	int drug_edit(Drug vo) throws Exception;
	void drug_del(Drug vo) throws Exception;
	
public int count() throws Exception;
	
	public List<Drug> listPage(int displayPost, int postNum,String keyword) throws Exception;	
	
	public int searchcount(String keyword) throws Exception;
}
