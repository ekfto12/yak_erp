package com.km.yak_erp.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.km.yak_erp.vo.Member_question;

@Repository("member_question_dao")
public class member_question_dao {
	@Autowired
	private SqlSessionTemplate sqlSession;
		
	
/*
	public List<Business> list() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList("business.list");
	}
	*/
	
	public List<Member_question> listPage(int displayPost, int postNum,String keyword) throws Exception{
		 HashMap<String, Object> data = new HashMap<String,Object>();
		  
		 data.put("displayPost", displayPost);
		 data.put("postNum", postNum);
		 data.put("keyword", keyword); 
		 return sqlSession.selectList("member_question.listPage",data);
	
	}
	
	public int count() throws Exception{
		return sqlSession.selectOne("member_question.count"); 
	}
	
	public int searchcount(String keyword) throws Exception {
		 
		 HashMap<String, Object> data = new HashMap<String, Object>();
		 
		 data.put("keyword", keyword);
		 
		 return sqlSession.selectOne("member_question.searchcount", data); 
	}
	
public void mq_write(Member_question vo) throws Exception {
		
		sqlSession.insert("member_question.mq_write",vo);
		
	}
	// 게시물 조회
	public Member_question mq_view(int qno) throws Exception {
	 
	 return sqlSession.selectOne("member_question.mq_view", qno);
	}
	
	public void mq_modify(Member_question vo) throws Exception {
		 sqlSession.update("member_question.mq_modify", vo);
		}
	
	public void mq_status(Member_question vo) throws Exception {
		 sqlSession.update("member_question.mq_status", vo);
		}
	
	public void mq_delete(int qno) throws Exception {
		 sqlSession.delete("member_question.mq_delete", qno);
		}
}
