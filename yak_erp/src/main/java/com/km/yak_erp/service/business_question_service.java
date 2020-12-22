package com.km.yak_erp.service;

import java.util.List;

import com.km.yak_erp.vo.Business_question;

public interface business_question_service {
	public int count() throws Exception;
	
	public List<Business_question> listPage(int displayPost, int postNum,String keyword) throws Exception;
	
	public int searchcount(String keyword) throws Exception;
	
	public List<Business_question> listPage5() throws Exception;
	
	public void bq_write(Business_question vo) throws Exception;
	
	public Business_question bq_view(int bqno) throws Exception;
	
	public void bq_modify(Business_question vo) throws Exception;
	
	public void bq_delete(int bqno) throws Exception;
	
	public void bq_status(Business_question vo) throws Exception;
}
