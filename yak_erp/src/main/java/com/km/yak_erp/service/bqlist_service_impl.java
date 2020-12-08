package com.km.yak_erp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.km.yak_erp.dao.bqlist_dao;
import com.km.yak_erp.dao.business_dao;
import com.km.yak_erp.vo.Bqlist;
import com.km.yak_erp.vo.Business;

@Service("bqlistService")
public class bqlist_service_impl implements bqlist_service{
	
	@Resource(name="bqlist_dao")
    private bqlist_dao bqlistDAO;
	
	/*
	@Override
	public List<Business> list() throws Exception{
		return businessDAO.list();
		}
	*/
	@Override
	public int count() throws Exception {
	 return bqlistDAO.count();
	}
	
	@Override
	public List<Bqlist> listPage(int displayPost, int postNum,String keyword) throws Exception {
	 return bqlistDAO.listPage(displayPost, postNum,keyword);
	}
	
	public int searchcount(String keyword) throws Exception{
		return bqlistDAO.searchcount(keyword);
	}
}
