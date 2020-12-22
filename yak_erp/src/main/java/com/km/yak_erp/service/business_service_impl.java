package com.km.yak_erp.service;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.km.yak_erp.dao.business_dao;
import com.km.yak_erp.vo.Banner;
import com.km.yak_erp.vo.Business;
import com.km.yak_erp.vo.Business_question;


@Service("businessService")
public class business_service_impl implements business_service{
	@Resource(name="business_dao")
    private business_dao business_dao;
	
	@Override
	public Business businessget(String company_name) throws Exception{
		return business_dao.businessget(company_name);
	}
	@Override
	public Banner bannerget(String company_name) throws Exception{
		return business_dao.bannerget(company_name);
	}
	@Override
	public List<Business_question> qu_get(String company_name) throws Exception{
		return business_dao.qu_get(company_name);
	}
	@Override
	public int business_add(Business vo) throws Exception{
		return business_dao.business_add(vo);
	}
	@Override
	public int business_edit(Business vo) throws Exception{
		return business_dao.business_edit(vo);
	}
	@Override
	public void business_del(Business vo) throws Exception{
		business_dao.business_del(vo);
	}
	@Override
	public int count() throws Exception {
	 return business_dao.count();
	}
	
	@Override
	public List<Business> listPage(int displayPost, int postNum ,String keyword) throws Exception {
	 return business_dao.listPage(displayPost, postNum ,keyword);
	}
	
	public int searchcount(String keyword) throws Exception{
		return business_dao.searchcount(keyword);
	}
}
