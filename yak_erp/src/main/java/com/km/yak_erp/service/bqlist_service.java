package com.km.yak_erp.service;

import java.util.List;

import com.km.yak_erp.vo.Bqlist;
import com.km.yak_erp.vo.Qlist;


public interface bqlist_service {
	
	//List<Business> list() throws Exception;
	
	public int count() throws Exception;
	
	public List<Bqlist> listPage(int displayPost, int postNum,String keyword) throws Exception;
	
	public int searchcount(String keyword) throws Exception;
	
	public List<Bqlist> listPage5() throws Exception;
	
	public void bq_write(Bqlist vo) throws Exception;
	
	public Bqlist bq_view(int bqno) throws Exception;
	
	public void bq_modify(Bqlist vo) throws Exception;
	
	public void bq_delete(int bqno) throws Exception;
	
	public void bq_status(Bqlist vo) throws Exception;
}
