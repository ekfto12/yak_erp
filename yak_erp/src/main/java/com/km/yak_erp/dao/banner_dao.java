package com.km.yak_erp.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.km.yak_erp.vo.Banner;
import com.km.yak_erp.vo.Business;
import com.km.yak_erp.vo.Drug;
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
	
	public int bannerUp(Banner vo) throws Exception{
		return sqlSession.update("banner.bannerUp", vo);
	}
	
	public Banner bannerGet(int ban_num) throws Exception{
		return sqlSession.selectOne("banner.bannerGet", ban_num);
	}
	public void bannerdrop(Banner vo) throws Exception{
		sqlSession.delete("banner.bannerdrop", vo);
	}
	
	public List<Banner> listPage(int displayPost, int postNum,String keyword) throws Exception{
		 HashMap<String, Object> data = new HashMap<String,Object>();
		  
		 data.put("displayPost", displayPost);
		 data.put("postNum", postNum);
		 data.put("keyword", keyword);
		 return sqlSession.selectList("banner.listPage",data);
	
	}
	
	public int count() throws Exception{
		return sqlSession.selectOne("banner.count"); 
	}
	
	public int searchcount(String keyword) throws Exception {
		 
		 HashMap<String, Object> data = new HashMap<String, Object>();
		 
		 data.put("keyword", keyword);
		 
		 return sqlSession.selectOne("banner.searchcount", data); 
}
	
	
}
