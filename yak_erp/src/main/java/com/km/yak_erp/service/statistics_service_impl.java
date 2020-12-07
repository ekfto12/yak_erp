package com.km.yak_erp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.km.yak_erp.dao.statistics_dao;
import com.km.yak_erp.vo.Statistics;

@Service("statisticsService")
public class statistics_service_impl implements statistics_service{
	@Resource(name="statistics_dao")
    private statistics_dao statisticsDAO;
	
	@Override
	   public List<Statistics> getweek(){
	      return statisticsDAO.getweek();
	   }

	@Override
	   public Statistics gettoday(){
	      return statisticsDAO.gettoday();
	   }
	
	@Override
	   public Statistics getlive(){
	      return statisticsDAO.getlive();
	   }
	@Override
	   public int banner_monthly() {
		   return statisticsDAO.getbanner_monthly();
	   }
	@Override
	   public int banner_total() {
		   return statisticsDAO.banner_total();
	   }
	@Override
	   public int banner_monthly_total() {
		   return statisticsDAO.banner_monthly_total();
	   }

}
