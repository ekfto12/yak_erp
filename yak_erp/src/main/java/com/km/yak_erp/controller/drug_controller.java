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
import com.km.yak_erp.service.drug_service;
import com.km.yak_erp.vo.Drug;

@Controller
public class drug_controller {
	@Resource(name = "drugService")
	private drug_service drug_service;
	
	
	@RequestMapping(value = "/drug_view", method = RequestMethod.GET)
	public ModelAndView bannerView(String drug_name, ModelAndView mv, HttpServletResponse response, 
			HttpServletRequest request) throws Exception{
		
		Drug drug = drug_service.drug_get(drug_name);
		
		if (drug == null) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('삭제 또는 없는 회원입니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
		} else {
			mv.setViewName("drug/drug_view");
			mv.addObject("drug", drug);
			
		}
		return mv;
	}
	@RequestMapping(value = "/drug_add", method = RequestMethod.GET)
	public ModelAndView drinfo(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("drug/drug_add");
		return mav;
	}
	@RequestMapping(value = "/drug_insert", method = RequestMethod.POST)
	public String member_add(Drug vo, ModelAndView mv, HttpServletResponse response, RedirectAttributes redirect,
			HttpServletRequest request) throws Exception{
		int result = drug_service.drug_add(vo);
		if (result == 0) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('등록에 실패하였습니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
		} 
			redirect.addAttribute("drug_name", vo.getDrug_name());
		
			return "redirect:/drug_view";
	}
	
	@RequestMapping(value = "/drug_edit", method = RequestMethod.GET)
	public ModelAndView business_edit(String drug_name, ModelAndView mv, HttpServletResponse response, 
			HttpServletRequest request) throws Exception{

		Drug list = drug_service.drug_get(drug_name);
		if(list == null) {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('실패');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
		}else {
			mv.addObject("drug", list); // 맵에 저장된 데이터를 mav에 저장
			mv.setViewName("drug/drug_edit");
		}
		return mv;
	}
	
	@RequestMapping(value="/drug_update", method=RequestMethod.POST)
	 public String bannerUpdate(Drug vo, RedirectAttributes redirect, ModelAndView mv, HttpServletResponse response, HttpServletRequest request) throws Exception{
		
		int result = drug_service.drug_edit(vo);
		
		 if (result == 0) { 
			 response.setContentType("text/html;charset=utf-8");
			 PrintWriter out = response.getWriter();
			 out.println("<script>");
			 out.println("alert('수정 실패');");
			 out.println("history.go(-1);");
			 out.println("</script>");
			 out.close();
		 }
		
		 redirect.addAttribute("drug_name", vo.getDrug_name());
		 
		 return "redirect:/drug_view";
	 }
	
	@RequestMapping(value="/drug_del", method=RequestMethod.GET)
	public String bannerdel(Drug vo, HttpServletResponse response) throws Exception{
		 response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter(); 
			out.println("<script>");
			Drug list = drug_service.drug_get(vo.getDrug_name());
			
		 if(list == null) {
			 out.println("alert('삭제를 실패했습니다.');");
				out.println("history.go(-1);"); 
				out.println("</script>");
				out.close(); 
		 }
		 else {
			 	drug_service.drug_del(vo);
				out.println("alert('삭제 되었습니다.');");
				out.println("location.href='/yak_erp/dlistpage?num=1';"); 
				out.println("</script>");
				out.close(); 
		 }
		 
			return null; 
	 }
	
	@RequestMapping(value="/dlistpage", method = RequestMethod.GET)
    public ModelAndView getListpage(ModelAndView model, @RequestParam("num") int num, 
    		@RequestParam(value="keyword",required = false , defaultValue = "") String keyword) throws Exception {
		 
		 Page page = new Page();
		 
			System.out.println(keyword);
		 page.setNum(num);
		 page.setCount(drug_service.searchcount(keyword));    

		 List<Drug> list = null; 
		 
		 page.setSearchTypeKeyword(keyword);
		 list = drug_service.listPage(page.getDisplayPost(), page.getPostNum() ,keyword);
		 model.addObject("page", page);
		 model.addObject("list", list);   
		
		 model.addObject("pageNum", page.getPageNum());

		 model.addObject("startPageNum", page.getStartPageNum());
		 model.addObject("endPageNum", page.getEndPageNum());
		 //System.out.println(page.getStartPageNum());
		  //System.out.println(page.getEndPageNum());
		   model.addObject("prev", page.getPrev());
		   model.addObject("next", page.getNext());  

		   model.addObject("select", num);
		   model.setViewName("drug/dlistpage");
		   return model;
		 
		 /*
		 // 한 페이지에 출력할 게시물 갯수
		 int postNum = 10;
		  
		 // 하단 페이징 번호 ([ 게시물 총 갯수 ÷ 한 페이지에 출력할 갯수 ]의 올림)
		 int pageNum = (int)Math.ceil((double)count/postNum);
		  
		 // 출력할 게시물
		 int displayPost =(num-1) * postNum;
		    
		 List<Drug> list = null; 
		 list = drug_service.dlistPage(displayPost, postNum);
		 System.out.println(list);
		 System.out.println(num);
		 System.out.println(displayPost);
		 System.out.println(postNum);
		 System.out.println("총 개수"+count);
		 model.addAttribute("list", list);   
		 model.addAttribute("pageNum", pageNum);
		 */
		 
		 
		 
		}
	
}
