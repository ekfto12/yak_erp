package com.km.yak_erp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.km.yak_erp.dao.member_question_dao;
import com.km.yak_erp.vo.Member_question;

@Service("member_question_service")
public class member_question_service_impl implements member_question_service{
	@Resource(name="member_question_dao")
    private member_question_dao qlistDAO;
	
	/*
	@Override
	public List<Business> list() throws Exception{
		return businessDAO.list();
		}
	*/
	@Override
	public int count() throws Exception {
	 return qlistDAO.count();
	}
	
	@Override
	public List<Member_question> listPage(int displayPost, int postNum,String keyword) throws Exception {
	 return qlistDAO.listPage(displayPost, postNum,keyword);
	}
	public int searchcount(String keyword) throws Exception{
		return qlistDAO.searchcount(keyword);
	}
	
	@Override
	public void mq_write(Member_question vo) throws Exception{
		qlistDAO.mq_write(vo);
	}
	@Override
	public Member_question mq_view(int qno) throws Exception{
		return qlistDAO.mq_view(qno);
	}
	@Override
	public void mq_modify(Member_question vo) throws Exception{
		qlistDAO.mq_modify(vo);
	}
	@Override
	public void mq_delete(int qno) throws Exception {
		 qlistDAO.mq_delete(qno);
		}
	
	@Override
	public void mq_status(Member_question vo) throws Exception{
		qlistDAO.mq_status(vo);
	}
}
