package com.km.yak_erp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.km.yak_erp.dao.drug_dao;
import com.km.yak_erp.vo.Drug;

@Service("drugService")
public class drug_service_impl implements drug_service{
	@Resource(name="drug_dao")
    private drug_dao drug_dao;
	
	@Override
	public int drug_add(Drug vo) throws Exception{
		return drug_dao.drug_add(vo);
	}
	@Override
	public Drug drug_get(String id) throws Exception{
		return drug_dao.drug_get(id);
	}
	@Override
	public int drug_edit(Drug vo) throws Exception{
		return drug_dao.drug_edit(vo);
	}
	@Override
	public void drug_del(Drug vo) throws Exception{
		drug_dao.drug_del(vo);
	}
	@Override
	public int count() throws Exception {
	 return drug_dao.count();
	}
	
	@Override
	public List<Drug> listPage(int displayPost, int postNum,String keyword) throws Exception {
	 return drug_dao.listPage(displayPost, postNum,keyword);
	}
	
	@Override
	public int searchcount(String keyword) throws Exception{
		return drug_dao.searchcount(keyword);
	}
}
