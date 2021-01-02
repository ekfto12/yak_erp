package com.km.yak_erp.service;

import java.util.List;

<<<<<<< HEAD

import com.km.yak_erp.vo.Business;

public interface business_service {
	
	//List<Business> list() throws Exception;
	
=======
import com.km.yak_erp.vo.Banner;
import com.km.yak_erp.vo.Business;
import com.km.yak_erp.vo.Business_question;
import com.km.yak_erp.vo.Member_question;

public interface business_service {
	Business businessget(String company_name) throws Exception;
	Banner bannerget(String company_name) throws Exception;
	int business_add(Business vo) throws Exception;
	int business_edit(Business vo) throws Exception;
	void business_del(Business vo) throws Exception;
	public List<Business_question> qu_get(String company_name) throws Exception;
>>>>>>> c4d266d2a62279a024472eb8266d8a5db6e66c54
	public int count() throws Exception;
	
	public List<Business> listPage(int displayPost, int postNum,String keyword) throws Exception;	
	
	public int searchcount(String keyword) throws Exception;
}
