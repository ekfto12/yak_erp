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



@Repository("bqlist_dao")
public class bqlist_dao {
	@Autowired
	private SqlSessionTemplate sqlSession;
		
	
/*
	public List<Business> list() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList("business.list");
	}
	*/
	
	public List<Bqlist> listPage(int displayPost, int postNum,String keyword) throws Exception{
		 HashMap<String, Object> data = new HashMap<String,Object>();
		  
		 data.put("displayPost", displayPost);
		 data.put("postNum", postNum);
		 data.put("keyword", keyword);
		  
		 return sqlSession.selectList("bqlist.listPage",data);
	
	}
	
	public List<Bqlist> listPage5() throws Exception{
		 
		 return sqlSession.selectList("bqlist.listPage5");
	
	}
	

	
	public int count() throws Exception{
		return sqlSession.selectOne("bqlist.count"); 
	}
	
	public int searchcount(String keyword) throws Exception {
		 
		 HashMap<String, Object> data = new HashMap<String, Object>();
		 
		 data.put("keyword", keyword);
		 
		 return sqlSession.selectOne("bqlist.searchcount", data); 
	} 
	
	public void bq_write(Bqlist vo) throws Exception {
		
		sqlSession.insert("bqlist.bq_write",vo);
		
	}
	// 게시물 조회
	public Bqlist bq_view(int bqno) throws Exception {
	 
	 return sqlSession.selectOne("bqlist.bq_view", bqno);
	}
	
	public void bq_modify(Bqlist vo) throws Exception {
		 sqlSession.update("bqlist.bq_modify", vo);
		}
	
	public void bq_status(Bqlist vo) throws Exception {
		 sqlSession.update("bqlist.bq_status", vo);
		}
	
	public void bq_delete(int bqno) throws Exception {
		 sqlSession.delete("bqlist.bq_delete", bqno);
		}
	
}
	

