package com.km.yak_erp.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.km.yak_erp.dao.member_dao;
import com.km.yak_erp.exception.IdPasswordNotMatchingException;
import com.km.yak_erp.util.AuthInfo;
import com.km.yak_erp.util.login_command;
import com.km.yak_erp.vo.Member;


@Service("memberService")
public class member_service_impl implements member_service{
	@Resource(name="member_dao")
    private member_dao memberDAO;
	
	@Override
    public AuthInfo loginAuth(login_command loginCommand) throws Exception {
        Member member = memberDAO.selectById(loginCommand.getId());
        
        if(member == null) {
            throw new IdPasswordNotMatchingException();
        }
        if(!member.matchPassword(loginCommand.getPw())) {
            throw new IdPasswordNotMatchingException();
        }
        return new AuthInfo(member.getMEMBER_ID(), member.getMEMBER_NAME());
    }
	@Override
	   public Member selectMember (String id) {
	      return memberDAO.selectById(id);
	   }
}
