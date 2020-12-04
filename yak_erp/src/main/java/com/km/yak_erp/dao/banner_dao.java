package com.km.yak_erp.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.km.yak_erp.vo.Banner;
import com.km.yak_erp.vo.Member;

@Repository("banner_dao")
public class banner_dao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public void bannerIn(Banner vo) throws Exception{
		sqlSession.update("banner.bannerClear", vo);
		sqlSession.insert("banner.bannerIn", vo);
	}
	
	public List<Banner> bannerSearch() throws Exception{
		return sqlSession.selectList("banner.bannerSearch");
	}
	
	public void bannerDel(Banner vo) throws Exception{
		sqlSession.update("banner.bannerClear", vo);
	}
	
}
