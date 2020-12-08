package com.km.yak_erp.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import com.km.yak_erp.vo.Banner;
import com.km.yak_erp.vo.Business;
import com.km.yak_erp.vo.Member;



@Repository("business_dao")
public class business_dao {
	@Autowired
	private SqlSessionTemplate sqlSession;
		
	
/*
	public List<Business> list() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList("business.list");
	}
	*/
	
	public List<Business> listPage(int displayPost, int postNum,String keyword) throws Exception{
		 HashMap<String, Object> data = new HashMap<String, Object>();
		  
		 data.put("displayPost", displayPost);
		 data.put("postNum", postNum);
		 data.put("keyword", keyword);
		 return sqlSession.selectList("business.listPage",data);
	
	}
	
	public int count() throws Exception{
		return sqlSession.selectOne("business.count"); 
	}
	
	public int searchcount(String keyword) throws Exception {
			 
			 HashMap<String, Object> data = new HashMap<String, Object>();
			 
			 data.put("keyword", keyword);
			 
			 return sqlSession.selectOne("business.searchcount", data); 
	}
		
}
