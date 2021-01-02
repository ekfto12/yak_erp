package com.km.yak_erp.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.km.yak_erp.vo.Banner;
import com.km.yak_erp.vo.Bqlist;
import com.km.yak_erp.vo.Business;
import com.km.yak_erp.vo.Drug;
import com.km.yak_erp.vo.Member;
import com.km.yak_erp.vo.Qlist;



@Repository("qlist_dao")
public class qlist_dao {
	@Autowired
	private SqlSessionTemplate sqlSession;
		
	
/*
	public List<Business> list() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList("business.list");
	}
	*/
	
	public List<Qlist> listPage(int displayPost, int postNum,String keyword) throws Exception{
		 HashMap<String, Object> data = new HashMap<String,Object>();
		  
		 data.put("displayPost", displayPost);
		 data.put("postNum", postNum);
		 data.put("keyword", keyword); 
		 return sqlSession.selectList("qlist.listPage",data);
	
	}
	
	public int count() throws Exception{
		return sqlSession.selectOne("qlist.count"); 
	}
	
	public int searchcount(String keyword) throws Exception {
		 
		 HashMap<String, Object> data = new HashMap<String, Object>();
		 
		 data.put("keyword", keyword);
		 
		 return sqlSession.selectOne("qlist.searchcount", data); 
	}
	
public void mq_write(Qlist vo) throws Exception {
		
		sqlSession.insert("qlist.mq_write",vo);
		
	}
	// 게시물 조회
	public Qlist mq_view(int qno) throws Exception {
	 
	 return sqlSession.selectOne("qlist.mq_view", qno);
	}
	
	public void mq_modify(Qlist vo) throws Exception {
		 sqlSession.update("qlist.mq_modify", vo);
		}
	
	public void mq_status(Qlist vo) throws Exception {
		 sqlSession.update("qlist.mq_status", vo);
		}
	
	public void mq_delete(int qno) throws Exception {
		 sqlSession.delete("qlist.mq_delete", qno);
		}
}
