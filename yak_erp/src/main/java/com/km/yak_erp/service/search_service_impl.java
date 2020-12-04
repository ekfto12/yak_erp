package com.km.yak_erp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.km.yak_erp.dao.search_dao;
import com.km.yak_erp.vo.Banner;


@Service("search_service")
public class search_service_impl implements search_service{
	@Resource(name="search_dao")
    private search_dao searchDAO;
	
	@Override
	public List<Banner> searchBanner(String search) {
		return searchDAO.searchBanner(search);
	}
}
