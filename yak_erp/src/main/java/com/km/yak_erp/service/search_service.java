package com.km.yak_erp.service;

import java.util.List;

import com.km.yak_erp.vo.Banner;
import com.km.yak_erp.vo.Business;
import com.km.yak_erp.vo.Drug;
import com.km.yak_erp.vo.Member;

public interface search_service {
	public List<Banner>searchBanner(String search);
	public List<Business>searchBusiness (String search);
	public List<Drug>searchDrug (String search);
	public List<Member>searchMember (String search);
}
