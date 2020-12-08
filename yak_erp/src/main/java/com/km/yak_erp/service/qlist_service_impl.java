package com.km.yak_erp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.km.yak_erp.dao.bqlist_dao;
import com.km.yak_erp.dao.business_dao;
import com.km.yak_erp.dao.qlist_dao;
import com.km.yak_erp.vo.Bqlist;
import com.km.yak_erp.vo.Business;
import com.km.yak_erp.vo.Qlist;
import com.km.yak_erp.service.qlist_service;

@Service("qlistService")
public class qlist_service_impl implements qlist_service{
	
	@Resource(name="qlist_dao")
    private qlist_dao qlistDAO;
	
	/*
	@Override
	public List<Business> list() throws Exception{
		return businessDAO.list();
		}
	*/
	@Override
	public int count() throws Exception {
	 return qlistDAO.count();
	}
	
	@Override
	public List<Qlist> listPage(int displayPost, int postNum,String keyword) throws Exception {
	 return qlistDAO.listPage(displayPost, postNum,keyword);
	}
	public int searchcount(String keyword) throws Exception{
		return qlistDAO.searchcount(keyword);
	}
	
}
