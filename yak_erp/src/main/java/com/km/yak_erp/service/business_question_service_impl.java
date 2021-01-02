package com.km.yak_erp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.km.yak_erp.dao.business_question_dao;
import com.km.yak_erp.vo.Business_question;

@Service("business_question_service")
public class business_question_service_impl  implements business_question_service{
	@Resource(name="business_question_dao")
    private business_question_dao bqlistDAO;
	
	/*
	@Override
	public List<Business> list() throws Exception{
		return businessDAO.list();
		}
	*/
	@Override
	public int count() throws Exception {
	 return bqlistDAO.count();
	}
	
	@Override
	public List<Business_question> listPage(int displayPost, int postNum,String keyword) throws Exception {
	 return bqlistDAO.listPage(displayPost, postNum,keyword);
	}
	
	public int searchcount(String keyword) throws Exception{
		return bqlistDAO.searchcount(keyword);
	}
	
	@Override
	public List<Business_question> listPage5() throws Exception {
	 return bqlistDAO.listPage5();
	}
	
	@Override
	public void bq_write(Business_question vo) throws Exception{
		bqlistDAO.bq_write(vo);
	}
	@Override
	public Business_question bq_view(int bqno) throws Exception{
		return bqlistDAO.bq_view(bqno);
	}
	@Override
	public void bq_modify(Business_question vo) throws Exception{
		bqlistDAO.bq_modify(vo);
	}
	
	@Override
	public void bq_status(Business_question vo) throws Exception{
		bqlistDAO.bq_status(vo);
	}
	@Override
	public void bq_delete(int bqno) throws Exception {
		 bqlistDAO.bq_delete(bqno);
		}
}
