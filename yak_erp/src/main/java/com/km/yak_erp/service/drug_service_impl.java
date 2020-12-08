package com.km.yak_erp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;


import com.km.yak_erp.dao.drug_dao;

import com.km.yak_erp.vo.Drug;

@Service("drugService")
public class drug_service_impl implements drug_service{
	
	@Resource(name="drug_dao")
    private drug_dao drugDAO;
	
	/*
	@Override
	public List<Business> list() throws Exception{
		return businessDAO.list();
		}
	*/
	@Override
	public int count() throws Exception {
	 return drugDAO.count();
	}
	
	@Override
	public List<Drug> listPage(int displayPost, int postNum,String keyword) throws Exception {
	 return drugDAO.listPage(displayPost, postNum,keyword);
	}
	
	public int searchcount(String keyword) throws Exception{
		return drugDAO.searchcount(keyword);
	}
}
