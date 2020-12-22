package com.km.yak_erp.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.km.yak_erp.vo.Banner;
import com.km.yak_erp.vo.Business;
import com.km.yak_erp.vo.Drug;
import com.km.yak_erp.vo.Member;

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
	
	public List<Drug> searchDrug(String search){
		return sqlSession.selectList("search.searchDrug", search);
	}
	
	public List<Member> searchMember(String search){
		return sqlSession.selectList("search.searchMember", search);
	}
	
}
