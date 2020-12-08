package com.km.yak_erp.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.km.yak_erp.vo.Member;



@Repository("member_dao")
public class member_dao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public Member selectByEmail(String email) {
        return (Member)sqlSession.selectOne("member.selectByEmail", email);
    }
 
    public Member selectById(String id) {
        return (Member)sqlSession.selectOne("member.selectById", id);
    }
    
	public List<Member> listPage(int displayPost, int postNum,String keyword) throws Exception{
		 HashMap<String, Object> data = new HashMap<String,Object>();
		  
		 data.put("displayPost", displayPost);
		 data.put("postNum", postNum);
		 data.put("keyword", keyword);
		 return sqlSession.selectList("member.listPage",data);
	
	}
	
	public int count() throws Exception{
		return sqlSession.selectOne("member.count"); 
	}
	
	public int searchcount(String keyword) throws Exception {
		 
		 HashMap<String, Object> data = new HashMap<String, Object>();
		 
		 data.put("keyword", keyword);
		 
		 return sqlSession.selectOne("member.searchcount", data); 
}
	
}
