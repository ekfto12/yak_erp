package com.km.yak_erp.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.km.yak_erp.vo.Banner;
import com.km.yak_erp.vo.Business;

@Repository("search_dao")
public class search_dao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<Banner> searchBanner(String search){
		return sqlSession.selectList("search.searchBanner", search);
	}
	
	public List<Business> searchBusiness(String search){
		return sqlSession.selectList("search.searchBusiness", search);
	}
	
}
