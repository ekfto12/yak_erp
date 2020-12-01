package com.km.yak_erp.dao;

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
}
