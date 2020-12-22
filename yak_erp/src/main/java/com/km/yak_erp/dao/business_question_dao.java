package com.km.yak_erp.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.km.yak_erp.vo.Business_question;

@Repository("business_question_dao")
public class business_question_dao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<Business_question> listPage(int displayPost, int postNum,String keyword) throws Exception{
		 HashMap<String, Object> data = new HashMap<String,Object>();
		  
		 data.put("displayPost", displayPost);
		 data.put("postNum", postNum);
		 data.put("keyword", keyword);
		  
		 return sqlSession.selectList("business_question.listPage",data);
	
	}
	
	public List<Business_question> listPage5() throws Exception{
		 
		 return sqlSession.selectList("business_question.listPage5");
	
	}
	
	public int count() throws Exception{
		return sqlSession.selectOne("business_question.count"); 
	}
	
	public int searchcount(String keyword) throws Exception {
		 
		 HashMap<String, Object> data = new HashMap<String, Object>();
		 
		 data.put("keyword", keyword);
		 
		 return sqlSession.selectOne("business_question.searchcount", data); 
	}
	
	
	public void bq_write(Business_question vo) throws Exception {
		
		sqlSession.insert("business_question.bq_write",vo);
		
	}
	// 게시물 조회
	public Business_question bq_view(int bqno) throws Exception {
	 
	 return sqlSession.selectOne("business_question.bq_view", bqno);
	}
	
	public void bq_modify(Business_question vo) throws Exception {
		 sqlSession.update("business_question.bq_modify", vo);
		}
	
	public void bq_status(Business_question vo) throws Exception {
		 sqlSession.update("business_question.bq_status", vo);
		}
	
	public void bq_delete(int bqno) throws Exception {
		 sqlSession.delete("business_question.bq_delete", bqno);
		}
	

}
