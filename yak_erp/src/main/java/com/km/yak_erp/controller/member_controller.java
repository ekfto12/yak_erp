package com.km.yak_erp.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.km.yak_erp.dao.Page;
import com.km.yak_erp.exception.IdPasswordNotMatchingException;
import com.km.yak_erp.service.member_service;
import com.km.yak_erp.util.AuthInfo;
import com.km.yak_erp.util.login_command;
<<<<<<< HEAD
import com.km.yak_erp.vo.Drug;
import com.km.yak_erp.vo.Member;
=======
import com.km.yak_erp.vo.Banner;
import com.km.yak_erp.vo.Business;
import com.km.yak_erp.vo.Member;
import com.km.yak_erp.vo.Member_f;
import com.km.yak_erp.vo.Member_question;
import com.sun.media.jfxmedia.logging.Logger;
>>>>>>> c4d266d2a62279a024472eb8266d8a5db6e66c54

@Controller
public class member_controller {
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView loginForm(login_command login_command,
			@CookieValue(value = "REMEMBER", required = false) Cookie rememberCookie) throws Exception {

		if (rememberCookie != null) {
			login_command.setId(rememberCookie.getValue());
			login_command.setRememberId(true);
		}

<<<<<<< HEAD
		ModelAndView mv = new ModelAndView("login");
=======
		ModelAndView mv = new ModelAndView("main/login");
>>>>>>> c4d266d2a62279a024472eb8266d8a5db6e66c54
		return mv;
	}

	@Resource(name = "memberService")
	private member_service memberSer;

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView loginSuccess(@Valid login_command loginCommand, BindingResult bindingResult,
			HttpSession session, HttpServletResponse response) throws Exception {

		if (bindingResult.hasErrors()) {
<<<<<<< HEAD
			ModelAndView mv = new ModelAndView("login");
=======
			ModelAndView mv = new ModelAndView("main/login");
>>>>>>> c4d266d2a62279a024472eb8266d8a5db6e66c54
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
<<<<<<< HEAD
			ModelAndView mv = new ModelAndView("login");
=======
			ModelAndView mv = new ModelAndView("main/login");
>>>>>>> c4d266d2a62279a024472eb8266d8a5db6e66c54
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
<<<<<<< HEAD
=======
	
	@RequestMapping(value = "/Member_Information", method = RequestMethod.GET)
	public ModelAndView bannerView(String member_id, ModelAndView mv, HttpServletResponse response, 
			HttpServletRequest request) throws Exception{
		
		Member member = memberSer.member_get(member_id);
		List<Member_f> member_f = memberSer.fa_get(member_id);
		List<Member_question> member_ff = memberSer.qu_get(member_id);
		if (member == null) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('삭제 또는 없는 회원입니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
		} else {
			mv.setViewName("member/Member_Information");
			mv.addObject("qu", member_ff);
			mv.addObject("member", member);
			mv.addObject("member_f", member_f);
			
		}
		return mv;
	}

	@RequestMapping(value = "/memberIdChk", method = RequestMethod.POST)
	@ResponseBody
	public String memberIdcheck(String memberId) throws Exception {
		int result = memberSer.idCheck(memberId);

		if (result != 0) {

			return "fail"; // 중복 아이디가 존재

		} else {

			return "success";
		}

	}
	@RequestMapping(value = "/Member_register", method = RequestMethod.GET)
	public ModelAndView M_re(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/Member_register");
		return mav;
	}
	@RequestMapping(value = "/member_add", method = RequestMethod.POST)
	public String member_add(Member vo, ModelAndView mv, HttpServletResponse response, RedirectAttributes redirect,
			HttpServletRequest request) throws Exception{
		
		
		int result = memberSer.member_add(vo);
		
		if (result == 0) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('등록에 실패하였습니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
		} 
			redirect.addAttribute("member_id", vo.getMember_id());
		
			return "redirect:/Member_Information";
	}
	
	@RequestMapping(value = "/member_edit", method = RequestMethod.GET)
	public ModelAndView business_edit(String member_id, ModelAndView mv, HttpServletResponse response, 
			HttpServletRequest request) throws Exception{

		Member list = memberSer.member_get(member_id);
		if(list == null) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('실패');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
		}else {
			System.out.println(list.getMember_id());
			mv.addObject("member", list); // 맵에 저장된 데이터를 mav에 저장
			mv.setViewName("member/member_edit");
		}
		return mv;
	}
	
	@RequestMapping(value="/member_update", method=RequestMethod.POST)
	 public String MemberUpdate(Member vo, RedirectAttributes redirect, ModelAndView mv, HttpServletResponse response, HttpServletRequest request) throws Exception{
		
		
		
		
			int result = memberSer.member_edit(vo);
			
			
			 if (result == 0) { 
				 response.setContentType("text/html;charset=utf-8");
				 PrintWriter out = response.getWriter();
				 out.println("<script>");
				 out.println("alert('수정 실패');");
				 out.println("history.go(-1);");
				 out.println("</script>");
				 out.close();
			 }
			 System.out.println(vo.getMember_id());
				 redirect.addAttribute("member_id",vo.getMember_id());
			 

		

		 return "redirect:/Member_Information";
	 }
	
	@RequestMapping(value="/member_del", method=RequestMethod.GET)
	public String bannerdel(Member vo, HttpServletResponse response) throws Exception{
		 response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter(); 
			out.println("<script>");
			Member list = memberSer.member_get(vo.getMember_id());
			
		 if(list == null) {
			 out.println("alert('삭제를 실패했습니다.');");
				out.println("history.go(-1);"); 
				out.println("</script>");
				out.close(); 
		 }
		 else {
			 	memberSer.member_del(vo);
				out.println("alert('삭제 되었습니다.');");
				out.println("location.href='/yak_erp/mlistpage?num=1';"); 
				out.println("</script>");
				out.close(); 
		 }
		 
			return null; 
	 }
	
	@RequestMapping(value="/mlistpage", method = RequestMethod.GET)
    public ModelAndView getListpage(ModelAndView model, @RequestParam("num") int num, 
    		@RequestParam(value="keyword",required = false , defaultValue = "") String keyword) throws Exception {
		 		  
		Page page = new Page();
		 
		
		 page.setNum(num);
		 page.setCount(memberSer.searchcount(keyword));    

		 List<Member> list = null; 
		 
		 page.setSearchTypeKeyword(keyword);
		 list = memberSer.listPage(page.getDisplayPost(), page.getPostNum() ,keyword);
		 model.addObject("page", page);
		 model.addObject("list", list);   
		 System.out.println(list);
		 model.addObject("pageNum", page.getPageNum());

		 model.addObject("startPageNum", page.getStartPageNum());
		 model.addObject("endPageNum", page.getEndPageNum());
		  
		   model.addObject("prev", page.getPrev());
		   model.addObject("next", page.getNext());  

		   model.addObject("select", num);
		   model.setViewName("member/mlistpage");
		   return model;
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
>>>>>>> c4d266d2a62279a024472eb8266d8a5db6e66c54
	
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
