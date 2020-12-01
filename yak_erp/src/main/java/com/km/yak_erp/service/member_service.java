package com.km.yak_erp.service;


import com.km.yak_erp.util.AuthInfo;
import com.km.yak_erp.util.login_command;
import com.km.yak_erp.vo.Member;

public interface member_service {
	AuthInfo loginAuth(login_command loginCommand) throws Exception;
	Member selectMember(String id);
}
