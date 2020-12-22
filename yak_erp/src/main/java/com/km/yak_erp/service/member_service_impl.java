package com.km.yak_erp.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.km.yak_erp.dao.member_dao;
import com.km.yak_erp.exception.IdPasswordNotMatchingException;
import com.km.yak_erp.util.AuthInfo;
import com.km.yak_erp.util.login_command;
import com.km.yak_erp.vo.Banner;
import com.km.yak_erp.vo.Business;
import com.km.yak_erp.vo.Member;
import com.km.yak_erp.vo.Member_f;
import com.km.yak_erp.vo.Member_question;


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
        return new AuthInfo(member.getMember_id(), member.getMember_name());
    }
	@Override
	   public Member selectMember (String id) {
	      return memberDAO.selectById(id);
	   }
	
	@Override
	public int member_add(Member vo) throws Exception{
		return memberDAO.member_add(vo);
	}
	
	@Override
	public int idCheck(String memberId) throws Exception{
		return memberDAO.idCheck(memberId);
	}
	@Override
	public Member member_get(String id) throws Exception{
		return memberDAO.member_get(id);
	}
	@Override
	public int member_edit(Member vo) throws Exception{
		return memberDAO.member_edit(vo);
	}
	@Override
	public void member_del(Member vo) throws Exception{
		memberDAO.member_del(vo);
	}
	@Override
	public int member_editt(Member vo) throws Exception{
		return memberDAO.member_editt(vo);
	}
	@Override
	public List<Member_f> fa_get(String id) throws Exception {
	 return memberDAO.fa_get(id);
	}
	@Override
	public List<Member_question> qu_get(String id) throws Exception {
	 return memberDAO.qu_get(id);
	}
	
	@Override
	public int count() throws Exception {
	 return memberDAO.count();
	}
	
	@Override
	public List<Member> listPage(int displayPost, int postNum,String keyword) throws Exception {
	 return memberDAO.listPage(displayPost, postNum,keyword);
	}
	
	public int searchcount(String keyword) throws Exception{
		return memberDAO.searchcount(keyword);
	}
}
