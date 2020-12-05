package com.km.yak_erp.service;

import java.util.List;

import com.km.yak_erp.vo.Banner;
import com.km.yak_erp.vo.Business;

public interface search_service {
	public List<Banner>searchBanner(String search);
	public List<Business>searchBusiness (String search);
}
