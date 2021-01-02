package com.km.yak_erp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.km.yak_erp.dao.search_dao;
import com.km.yak_erp.vo.Banner;
import com.km.yak_erp.vo.Business;
import com.km.yak_erp.vo.Drug;
import com.km.yak_erp.vo.Member;


@Service("searchService")
public class search_service_impl implements search_service{
	@Resource(name="search_dao")
    private search_dao searchDAO;
	
	@Override
	public List<Banner> searchBanner(String search) {
		return searchDAO.searchBanner(search);
	}
	
	@Override
	public List<Business> searchBusiness(String search) {
		return searchDAO.searchBusiness(search);
	}
	
	@Override
	public List<Drug> searchDrug(String search) {
		return searchDAO.searchDrug(search);
	}
	
	@Override
	public List<Member> searchMember(String search) {
		return searchDAO.searchMember(search);
	}
}
