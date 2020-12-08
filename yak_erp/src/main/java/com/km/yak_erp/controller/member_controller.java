package com.km.yak_erp.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.km.yak_erp.dao.Page;
import com.km.yak_erp.exception.IdPasswordNotMatchingException;
import com.km.yak_erp.service.member_service;
import com.km.yak_erp.util.AuthInfo;
import com.km.yak_erp.util.login_command;
import com.km.yak_erp.vo.Drug;
import com.km.yak_erp.vo.Member;

@Controller
public class member_controller {
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView loginForm(login_command login_command,
			@CookieValue(value = "REMEMBER", required = false) Cookie rememberCookie) throws Exception {

		if (rememberCookie != null) {
			login_command.setId(rememberCookie.getValue());
			login_command.setRememberId(true);
		}

		ModelAndView mv = new ModelAndView("login");
		return mv;
	}

	@Resource(name = "memberService")
	private member_service memberSer;

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView loginSuccess(@Valid login_command loginCommand, BindingResult bindingResult,
			HttpSession session, HttpServletResponse response) throws Exception {

		if (bindingResult.hasErrors()) {
			ModelAndView mv = new ModelAndView("login");
			return mv;
		}

		try {

			AuthInfo authInfo = memberSer.loginAuth(loginCommand);
			session.setAttribute("authInfo", authInfo);

			Cookie rememberCookie = new Cookie("REMEMBER", loginCommand.getId());
			rememberCookie.setPath("/");
			if (loginCommand.isRememberId()) {
				rememberCookie.setMaxAge(60 * 60 * 24 * 7);
			} else {
				rememberCookie.setMaxAge(0);
			}
			response.addCookie(rememberCookie);

		} catch (IdPasswordNotMatchingException e) {
			bindingResult.rejectValue("pw", "notMatch", "아이디와 비밀번호가 맞지않습니다.");
			ModelAndView mv = new ModelAndView("login");
			return mv;
		}

		ModelAndView mv = new ModelAndView("redirect:/");
		return mv;
	}

	@RequestMapping("/logout")
	public ModelAndView logout(HttpSession session) {
		session.invalidate();
		ModelAndView mv = new ModelAndView("redirect:login");
		return mv;
	}
	
	@RequestMapping(value="/mlistpage", method = RequestMethod.GET)
    public void getListpage(Model model, @RequestParam("num") int num, 
    		@RequestParam(value="keyword",required = false , defaultValue = "") String keyword) throws Exception {
		 		  
		Page page = new Page();
		 
		
		 page.setNum(num);
		 page.setCount(memberSer.searchcount(keyword));    

		 List<Member> list = null; 
		 
		 page.setSearchTypeKeyword(keyword);
		 list = memberSer.listPage(page.getDisplayPost(), page.getPostNum() ,keyword);
		 model.addAttribute("page", page);
		 model.addAttribute("list", list);   
		 System.out.println(list);
		 model.addAttribute("pageNum", page.getPageNum());

		 model.addAttribute("startPageNum", page.getStartPageNum());
		 model.addAttribute("endPageNum", page.getEndPageNum());
		  
		   model.addAttribute("prev", page.getPrev());
		   model.addAttribute("next", page.getNext());  

		   model.addAttribute("select", num);
		 /*
		 // 한 페이지에 출력할 게시물 갯수
		 int postNum = 10;
		  
		 // 하단 페이징 번호 ([ 게시물 총 갯수 ÷ 한 페이지에 출력할 갯수 ]의 올림)
		 int pageNum = (int)Math.ceil((double)count/postNum);
		  
		 // 출력할 게시물
		 int displayPost = (num - 1) * postNum;
		    
		 List<Member> list = null; 
		 list = memberSer.listPage(displayPost, postNum,keyword);
		 System.out.println(list);
		 model.addAttribute("list", list);   
		 model.addAttribute("pageNum", pageNum);
		 */
		 
		}

}
