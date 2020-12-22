package com.km.yak_erp.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.km.yak_erp.vo.Statistics;

@Repository("statistics_dao")
public class statistics_dao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public List<Statistics> getweek(){
		return sqlSession.selectList("statistics.getweek");
	}
	public List<Statistics> getweek_join(){
		return sqlSession.selectList("statistics.getweek_join");
	}
	public Statistics gettoday() {
		return sqlSession.selectOne("statistics.gettoday");
	}
	public Statistics gettoday_join() {
		return sqlSession.selectOne("statistics.gettoday_join");
	}
	public Statistics getlive() {
		return sqlSession.selectOne("statistics.getlive");
	}
	public int getbanner_monthly() {
		return sqlSession.selectOne("statistics.getbanner_monthly");
	}
	public int banner_total() {
		return sqlSession.selectOne("statistics.total");
	}
	public int banner_monthly_total() {
		return sqlSession.selectOne("statistics.banner_monthly_total");
	}
}
