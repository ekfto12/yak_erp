package com.km.yak_erp.service;


import java.util.List;

import com.km.yak_erp.util.AuthInfo;
import com.km.yak_erp.util.login_command;

import com.km.yak_erp.vo.Member;

public interface member_service {
	AuthInfo loginAuth(login_command loginCommand) throws Exception;
	Member selectMember(String id);
	
	public int count() throws Exception;
	
	public List<Member> listPage(int displayPost, int postNum,String keyword) throws Exception;	
	
	public int searchcount(String keyword) throws Exception;
}
