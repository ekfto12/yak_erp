package com.km.yak_erp.controller;



import java.io.File;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.km.yak_erp.dao.Page;
import com.km.yak_erp.service.banner_service;
import com.km.yak_erp.service.bqlist_service;
import com.km.yak_erp.service.member_service;
import com.km.yak_erp.service.business_service;
import com.km.yak_erp.service.drug_service;
import com.km.yak_erp.util.CommandMap;
import com.km.yak_erp.util.UploadFileUtils;

import com.km.yak_erp.vo.Banner;
import com.km.yak_erp.vo.Bqlist;
import com.km.yak_erp.vo.Business;
import com.km.yak_erp.vo.Drug;
import com.km.yak_erp.vo.Qlist;

import java.lang.Math;

@Controller
public class bqlist_controller {
	@Resource(name="bqlistService")
	 private bqlist_service bqlist_service;
	
	/*
	@RequestMapping(value="/blist", method = RequestMethod.GET)
    public void getList(Model model) throws Exception {
        List<Business> list = null;
        list = business_service.list();
        System.out.println(list);
        model.addAttribute("list", list);
    }
	*/
	@RequestMapping(value = "/bq_write", method = RequestMethod.GET)
	public void getbq_write() throws Exception {
	   
	}
	
	// 寃뚯떆臾� �옉�꽦
	@RequestMapping(value = "/bq_write", method = RequestMethod.POST)
	public String postbq_write(Bqlist vo) throws Exception {
	  bqlist_service.bq_write(vo);
	  System.out.println(vo);
	  return "redirect:/b_quesList?num=1";
	}
	
	// 게시물 조회
	@RequestMapping(value = "/bq_view", method = RequestMethod.GET)
	public void getbq_view(@RequestParam("bqno") int bqno, Model model) throws Exception {
		Bqlist vo = bqlist_service.bq_view(bqno);
		model.addAttribute("bq_view",vo);

	}
	
	@RequestMapping(value = "/bq_modify", method = RequestMethod.GET)
	public void getbq_modify(@RequestParam("bqno") int bqno, Model model) throws Exception {
		Bqlist vo = bqlist_service.bq_view(bqno);
		model.addAttribute("bq_view",vo);
		
		
	}
	@RequestMapping(value = "/bq_modify", method = RequestMethod.POST)
	public String postbq_modify(Bqlist vo) throws Exception {
	  bqlist_service.bq_modify(vo);
	  
	  return "redirect:/bq_view?bqno="+vo.getBqno();
	}
	
	@RequestMapping(value = "/bq_status", method = RequestMethod.GET)
	public String getbq_status(@RequestParam("bqno") int bqno, Model model) throws Exception {
		Bqlist vo = bqlist_service.bq_view(bqno);
		model.addAttribute("bq_view",vo);
		
		bqlist_service.bq_status(vo);
		
		return "redirect:/b_quesList?num=1";
	}
	
	// 게시물 삭제
	@RequestMapping(value = "/bq_delete", method = RequestMethod.GET)
	public String getbq_delete(@RequestParam("bqno") int bqno) throws Exception {
	  
	 bqlist_service.bq_delete(bqno);  

	 return "redirect:/b_quesList?num=1";
	}
	
	
	@RequestMapping(value="/b_quesList", method = RequestMethod.GET)
    public void getListpage(Model model, @RequestParam("num") int num, 
    		@RequestParam(value="keyword",required = false , defaultValue = "") String keyword) throws Exception {
		 
		 Page page = new Page();
		 
			
		 page.setNum(num);
		 page.setCount(bqlist_service.searchcount(keyword));    

		 List<Bqlist> list = null; 
		 
		 page.setSearchTypeKeyword(keyword);
		 list = bqlist_service.listPage(page.getDisplayPost(), page.getPostNum() ,keyword);
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
		 int displayPost =(num-1) * postNum;
		    
		 List<Bqlist> list = null; 
		 list = bqlist_service.listPage(displayPost, postNum);
		 System.out.println(list);
		 System.out.println(num);
		 System.out.println(displayPost);
		 System.out.println(postNum);
		 System.out.println("총 개수"+count);
		 model.addAttribute("list", list);   
		 model.addAttribute("pageNum", pageNum);
		}
		*/

	}

}
