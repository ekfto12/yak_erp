package com.km.yak_erp.service;

import java.util.List;

import com.km.yak_erp.vo.Member_question;

public interface member_question_service {
public int count() throws Exception;
	
	public List<Member_question> listPage(int displayPost, int postNum,String keyword) throws Exception;	

	public int searchcount(String keyword) throws Exception;
public void mq_write(Member_question vo) throws Exception;
	
	public Member_question mq_view(int qno) throws Exception;
	
	public void mq_modify(Member_question vo) throws Exception;
	
	public void mq_delete(int qno) throws Exception;
	
	public void mq_status(Member_question vo) throws Exception;
}
