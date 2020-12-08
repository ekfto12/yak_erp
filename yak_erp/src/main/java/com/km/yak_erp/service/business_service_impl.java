package com.km.yak_erp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.km.yak_erp.dao.business_dao;
import com.km.yak_erp.vo.Business;

@Service("businessService")
public class business_service_impl implements business_service{
	
	@Resource(name="business_dao")
    private business_dao businessDAO;
	
	/*
	@Override
	public List<Business> list() throws Exception{
		return businessDAO.list();
		}
	*/
	@Override
	public int count() throws Exception {
	 return businessDAO.count();
	}
	
	@Override
	public List<Business> listPage(int displayPost, int postNum ,String keyword) throws Exception {
	 return businessDAO.listPage(displayPost, postNum ,keyword);
	}
	
	public int searchcount(String keyword) throws Exception{
		return businessDAO.searchcount(keyword);
	}
	
}
