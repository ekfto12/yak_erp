package com.km.yak_erp.service;


import java.util.List;

import com.km.yak_erp.util.AuthInfo;
import com.km.yak_erp.util.login_command;
import com.km.yak_erp.vo.Banner;
import com.km.yak_erp.vo.Business;
import com.km.yak_erp.vo.Member;
import com.km.yak_erp.vo.Member_f;
import com.km.yak_erp.vo.Member_question;

public interface member_service {
	AuthInfo loginAuth(login_command loginCommand) throws Exception;
	Member selectMember(String id);
	int member_add(Member vo) throws Exception;
	int idCheck(String memberId) throws Exception;
	Member member_get(String id) throws Exception;
	int member_edit(Member vo) throws Exception;
	void member_del(Member vo) throws Exception;
	int member_editt(Member vo) throws Exception;
	public List<Member_f> fa_get(String id) throws Exception;	
	public List<Member_question> qu_get(String id) throws Exception;
	public int count() throws Exception;
	
	public List<Member> listPage(int displayPost, int postNum,String keyword) throws Exception;	
	
	public int searchcount(String keyword) throws Exception;
}
