package com.km.yak_erp.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.km.yak_erp.dao.Page;
import com.km.yak_erp.service.business_question_service;
import com.km.yak_erp.vo.Business_question;

@Controller
public class business_question_controller {
	@Resource(name="business_question_service")
	 private business_question_service bqlist_service;
	
	/*
	@RequestMapping(value="/blist", method = RequestMethod.GET)
   public void getList(Model model) throws Exception {
       List<Business> list = null;
       list = business_service.list();
       System.out.println(list);
       model.addAttribute("list", list);
   }
	*/
	
	
	@RequestMapping(value = "/bq_write", method = RequestMethod.POST)
	public String postbq_write(Business_question vo) throws Exception {
	  bqlist_service.bq_write(vo);
	  
	  return "redirect:/b_quesList?num=1";
	}
	@RequestMapping(value = "/bq_write", method = RequestMethod.GET)
	public ModelAndView getmq_write(ModelAndView model) throws Exception {
		
		model.setViewName("ques/bq_write");
		   return model;
	}

	// 게시물 조회
		@RequestMapping(value = "/bq_view", method = RequestMethod.GET)
		public ModelAndView getbq_view(@RequestParam("bqno") int bqno, ModelAndView model) throws Exception {
			Business_question vo = bqlist_service.bq_view(bqno);
			model.addObject("bq_view",vo);
			model.setViewName("ques/bq_view");
			   return model;

		}
		@RequestMapping(value = "/bq_modify", method = RequestMethod.GET)
		public ModelAndView getbq_modify(@RequestParam("bqno") int bqno, ModelAndView model) throws Exception {
			Business_question vo = bqlist_service.bq_view(bqno);
			model.addObject("bq_view",vo);
			model.setViewName("ques/bq_modify");
			   return model;
			
			
		}
		@RequestMapping(value = "/bq_modify", method = RequestMethod.POST)
		public String postbq_modify(Business_question vo) throws Exception {
		  bqlist_service.bq_modify(vo);
		  
		  return "redirect:/bq_view?bqno="+vo.getBqno();
		}
		
		@RequestMapping(value = "/bq_status", method = RequestMethod.GET)
		public String getbq_status(@RequestParam("bqno") int bqno, Model model) throws Exception {
			Business_question vo = bqlist_service.bq_view(bqno);
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
	    public ModelAndView getListpage(ModelAndView model, @RequestParam("num") int num, 
	    		@RequestParam(value="keyword",required = false , defaultValue = "") String keyword) throws Exception {
			 
			 Page page = new Page();
			 
				
			 page.setNum(num);
			 page.setCount(bqlist_service.searchcount(keyword));    

			 List<Business_question> list = null; 
			 
			 page.setSearchTypeKeyword(keyword);
			 list = bqlist_service.listPage(page.getDisplayPost(), page.getPostNum() ,keyword);
			 model.addObject("page", page);
			 model.addObject("list", list);   
			 System.out.println(list);
			 model.addObject("pageNum", page.getPageNum());

			 model.addObject("startPageNum", page.getStartPageNum());
			 model.addObject("endPageNum", page.getEndPageNum());
			  
			   model.addObject("prev", page.getPrev());
			   model.addObject("next", page.getNext());  

			   model.addObject("select", num);
			   
			   model.setViewName("ques/b_quesList");
			   return model;
			   
			   
			   
			   
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
