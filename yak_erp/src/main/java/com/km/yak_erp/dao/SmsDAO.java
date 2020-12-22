package com.km.yak_erp.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.km.yak_erp.vo.SmsVo;

@Repository("SmsDAO")
public class SmsDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public void insert(SmsVo vo) {
		sqlSession.insert("sms.insert", vo);
	}
	
	public List<SmsVo> select(String to) {
		return sqlSession.selectList("sms.select", to);
	}
	
	public List<SmsVo> select() {
		return sqlSession.selectList("sms.selectAll");
	}
}