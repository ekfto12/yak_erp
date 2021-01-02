package com.km.yak_erp.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.km.yak_erp.dao.Page;
import com.km.yak_erp.service.banner_service;
import com.km.yak_erp.service.business_service;
import com.km.yak_erp.vo.Banner;
import com.km.yak_erp.vo.Business;
import com.km.yak_erp.vo.Business_question;
import com.km.yak_erp.vo.Drug;
import com.km.yak_erp.vo.Member_question;

@Controller
public class business_controller {
	@Resource(name="businessService")
	 private business_service business_service;
	@Resource(name="bannerService")
	 private banner_service bann_service;
	
	@RequestMapping(value = "/Information", method = RequestMethod.GET)
	public ModelAndView bannerView(String company_name, ModelAndView mv, HttpServletResponse response, 
			HttpServletRequest request) throws Exception{
		Business business = business_service.businessget(company_name);
		Banner banner = business_service.bannerget(company_name);
		List<Business_question> member_ff = business_service.qu_get(company_name);
		if (business == null) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('삭제 또는 없는 회원입니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
		} else {
			mv.setViewName("business/Information");
			mv.addObject("business", business);
			mv.addObject("member_ff", member_ff);
			mv.addObject("banner", banner);
		}
		return mv;
	}
	@RequestMapping(value = "/business_add", method = RequestMethod.GET)
	public ModelAndView drinfo(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("business/business_add");
		return mav;
	}
	@RequestMapping(value = "/business_insert", method = RequestMethod.POST)
	public String member_add(Business vo, ModelAndView mv, HttpServletResponse response, RedirectAttributes redirect,
			HttpServletRequest request) throws Exception{
		int result = business_service.business_add(vo);
		if (result == 0) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('등록에 실패하였습니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
		} 
			redirect.addAttribute("company_name", vo.getCompany_name());
		
			return "redirect:/Information";
	}
	
	@RequestMapping(value = "/business_edit", method = RequestMethod.GET)
	public ModelAndView business_edit(String company_name, ModelAndView mv, HttpServletResponse response, 
			HttpServletRequest request) throws Exception{

		Business list = business_service.businessget(company_name);
		if(list == null) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('실패');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
		}else {
			mv.addObject("business", list); // 맵에 저장된 데이터를 mav에 저장
			mv.setViewName("business/business_edit");
		}
		return mv;
	}
	
	@RequestMapping(value="/business_update", method=RequestMethod.POST)
	 public String bannerUpdate(Business vo, RedirectAttributes redirect, ModelAndView mv, HttpServletResponse response, HttpServletRequest request) throws Exception{
		
		int result = business_service.business_edit(vo);
		
		 if (result == 0) { 
			 response.setContentType("text/html;charset=utf-8");
			 PrintWriter out = response.getWriter();
			 out.println("<script>");
			 out.println("alert('수정 실패');");
			 out.println("history.go(-1);");
			 out.println("</script>");
			 out.close();
		 }
		
		 redirect.addAttribute("company_name", vo.getCompany_name());
		 
		 return "redirect:/Information";
	 }
	
	@RequestMapping(value="/business_del", method=RequestMethod.GET)
	public String bannerdel(Business vo, HttpServletResponse response) throws Exception{
		 response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter(); 
			out.println("<script>");
			Business list = business_service.businessget(vo.getCompany_name());
			
		 if(list == null) {
			 out.println("alert('삭제를 실패했습니다.');");
				out.println("history.go(-1);"); 
				out.println("</script>");
				out.close(); 
		 }
		 else {
			 	business_service.business_del(vo);
				out.println("alert('삭제 되었습니다.');");
				out.println("location.href='/yak_erp/blistpage?num=1';"); 
				out.println("</script>");
				out.close(); 
		 }
		 
			return null; 
	 }
	
	@RequestMapping(value="/blistpage", method = RequestMethod.GET)
    public ModelAndView getListpage(ModelAndView model, @RequestParam("num") int num, 
    		@RequestParam(value="keyword",required = false , defaultValue = "") String keyword) throws Exception {
		/*
		 int count = business_service.bcount();
		  
		 int searchbconut = business_service.searchbcount(keyword);
		 */
		 /*
		 // 한 페이지에 출력할 게시물 갯수
		 int postNum = 10;
		  
		 // 하단 페이징 번호 ([ 게시물 총 갯수 ÷ 한 페이지에 출력할 갯수 ]의 올림)
		 int pageNum = (int)Math.ceil((double)count/postNum);
		  
		 // 출력할 게시물
		 int displayPost = (num - 1) * postNum;
		 
		// 한번에 표시할 페이징 번호의 갯수
		 int pageNum_cnt = 10;

		 // 표시되는 페이지 번호 중 마지막 번호
		 int endPageNum = (int)(Math.ceil((double)num / (double)pageNum_cnt) * pageNum_cnt);

		 // 표시되는 페이지 번호 중 첫번째 번호
		 int startPageNum = endPageNum - (pageNum_cnt - 1);
		 
		 int endPageNum_tmp = (int)(Math.ceil((double)count / (double)pageNum_cnt));
		 
		 if(endPageNum > endPageNum_tmp) {
		  endPageNum = endPageNum_tmp;
		 }
		    
		 boolean prev = startPageNum == 1 ? false : true;
		 boolean next = endPageNum * pageNum_cnt >= count ? false : true;
		*/ 
		 Page page = new Page();
		 
		
		 page.setNum(num);
		 page.setCount(business_service.searchcount(keyword));    

		 List<Business> list = null; 
		 
		 page.setSearchTypeKeyword(keyword);
		 list = business_service.listPage(page.getDisplayPost(), page.getPostNum() ,keyword);
		 model.addObject("page", page);
		 model.addObject("list", list);   
		 System.out.println(list);
		 model.addObject("pageNum", page.getPageNum());

		 model.addObject("startPageNum", page.getStartPageNum());
		 model.addObject("endPageNum", page.getEndPageNum());
		 System.out.println(page.getStartPageNum());
		  System.out.println(page.getEndPageNum());
		   model.addObject("prev", page.getPrev());
		   model.addObject("next", page.getNext());  
		   
		   model.addObject("select", num);
		   model.setViewName("business/blistpage");
		   return model;
		 /*
		list = business_service.listPage(displayPost, postNum , keyword);
		 System.out.println(list);
		 System.out.println("총 개수"+count);
		 System.out.println(num);
		 System.out.println(displayPost);
		 System.out.println(postNum);
		 System.out.println(keyword);
		 model.addAttribute("list", list);   
		 model.addAttribute("pageNum", pageNum);
		 
		 model.addAttribute("startPageNum", startPageNum);
		 model.addAttribute("endPageNum", endPageNum);

		 // 이전 및 다음 
		 model.addAttribute("prev", prev);
		 model.addAttribute("next", next);
		 
		 model.addAttribute("select", num);*/
		}
	
	
	
}
