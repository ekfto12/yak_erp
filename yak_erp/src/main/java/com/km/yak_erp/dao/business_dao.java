package com.km.yak_erp.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
<<<<<<< HEAD
import org.springframework.web.bind.annotation.RequestParam;

import com.km.yak_erp.vo.Banner;
import com.km.yak_erp.vo.Business;
import com.km.yak_erp.vo.Member;


=======

import com.km.yak_erp.vo.Banner;
import com.km.yak_erp.vo.Business;
import com.km.yak_erp.vo.Business_question;
import com.km.yak_erp.vo.Drug;
>>>>>>> c4d266d2a62279a024472eb8266d8a5db6e66c54

@Repository("business_dao")
public class business_dao {
	@Autowired
	private SqlSessionTemplate sqlSession;
<<<<<<< HEAD
		
	
/*
	public List<Business> list() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList("business.list");
	}
	*/
	
=======
	
	public Business businessget(String company_name) throws Exception{
		return sqlSession.selectOne("business.businessget", company_name);
	}
	
	public Banner bannerget(String company_name) throws Exception{
		return sqlSession.selectOne("business.bannerget", company_name);
	}
	public List<Business_question> qu_get(String company_name) throws Exception{
		return sqlSession.selectList("business.qu_get", company_name);
	}
	
	public int business_add(Business vo) throws Exception{
		return sqlSession.insert("business.business_add", vo);
	}
	public int business_edit(Business vo) throws Exception{
		return sqlSession.update("business.businessUp", vo);
	}
	
	public void business_del(Business vo) throws Exception{
		sqlSession.delete("business.businessDel", vo);
	}
>>>>>>> c4d266d2a62279a024472eb8266d8a5db6e66c54
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
<<<<<<< HEAD
		
=======
	
>>>>>>> c4d266d2a62279a024472eb8266d8a5db6e66c54
}
