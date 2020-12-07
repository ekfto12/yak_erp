package com.km.yak_erp.service;

import java.util.List;


import com.km.yak_erp.vo.Statistics;

public interface statistics_service {
	public List<Statistics>getweek();
	public Statistics gettoday();
	public Statistics getlive();
	public int banner_monthly();
	public int banner_total();
	public int banner_monthly_total();
	
}
