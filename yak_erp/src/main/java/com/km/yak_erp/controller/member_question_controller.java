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
import com.km.yak_erp.service.member_question_service;
import com.km.yak_erp.vo.Member_question;

@Controller
public class member_question_controller {

	@Resource(name="member_question_service")
	 private member_question_service qlist_service;
	
	/*
	@RequestMapping(value="/blist", method = RequestMethod.GET)
   public void getList(Model model) throws Exception {
       List<Business> list = null;
       list = business_service.list();
       System.out.println(list);
       model.addAttribute("list", list);
   }
	*/
	@RequestMapping(value = "/mq_write", method = RequestMethod.GET)
	public ModelAndView getmq_write(ModelAndView model) throws Exception {
		model.setViewName("ques/mq_write");
		   return model;
	}
	

	@RequestMapping(value = "/mq_write", method = RequestMethod.POST)
	public String postmq_write(Member_question vo) throws Exception {
	  qlist_service.mq_write(vo);
	  System.out.println(vo);
	  return "redirect:/m_quesList?num=1";
	}
	// 게시물 조회
		@RequestMapping(value = "/mq_view", method = RequestMethod.GET)
		public ModelAndView getmq_view(@RequestParam("qno") int qno, ModelAndView model) throws Exception {
			Member_question vo = qlist_service.mq_view(qno);
			model.addObject("mq_view",vo);
			model.setViewName("ques/mq_view");
			   return model;

		}
		
		@RequestMapping(value = "/mq_modify", method = RequestMethod.GET)
		public ModelAndView getmq_modify(@RequestParam("qno") int qno, ModelAndView model) throws Exception {
			Member_question vo = qlist_service.mq_view(qno);
			model.addObject("mq_view",vo);
			model.setViewName("ques/mq_modify");
			   return model;
			
			
		}
		@RequestMapping(value = "/mq_modify", method = RequestMethod.POST)
		public String postmq_modify(Member_question vo) throws Exception {
		  qlist_service.mq_modify(vo);
		  
		  return "redirect:/mq_view?qno="+vo.getQno();
		}
		
		@RequestMapping(value = "/mq_status", method = RequestMethod.GET)
		public String getmq_status(@RequestParam("qno") int qno, Model model) throws Exception {
			Member_question vo = qlist_service.mq_view(qno);
			model.addAttribute("mq_view",vo);
			
			qlist_service.mq_status(vo);
			
			return "redirect:/m_quesList?num=1";
		}
		
		
		
		// 게시물 삭제
		@RequestMapping(value = "/mq_delete", method = RequestMethod.GET)
		public String getmq_delete(@RequestParam("qno") int qno) throws Exception {
		  
		 qlist_service.mq_delete(qno);  

		 return "redirect:/m_quesList?num=1";
		}
		
		
		/*
		@RequestMapping(value="/blist", method = RequestMethod.GET)
	    public void getList(Model model) throws Exception {
	        List<Business> list = null;
	        list = business_service.list();
	        System.out.println(list);
	        model.addAttribute("list", list);
	    }
		*/
		
		@RequestMapping(value="/m_quesList", method = RequestMethod.GET)
	    public ModelAndView getListpage(ModelAndView model, @RequestParam("num") int num, 
	    		@RequestParam(value="keyword",required = false , defaultValue = "") String keyword) throws Exception {
			Page page = new Page();
			 
			
			 page.setNum(num);
			 page.setCount(qlist_service.searchcount(keyword));    

			 List<Member_question> list = null; 
			 
			 page.setSearchTypeKeyword(keyword);
			 list = qlist_service.listPage(page.getDisplayPost(), page.getPostNum() ,keyword);
			 model.addObject("page", page);
			 model.addObject("list", list);   
			 System.out.println(list);
			 model.addObject("pageNum", page.getPageNum());

			 model.addObject("startPageNum", page.getStartPageNum());
			 model.addObject("endPageNum", page.getEndPageNum());
			  
			   model.addObject("prev", page.getPrev());
			   model.addObject("next", page.getNext());  

			   model.addObject("select", num);
			   model.setViewName("ques/m_quesList");
			   return model;
			
			
			 /*
			 // 한 페이지에 출력할 게시물 갯수
			 int postNum = 10;
			  
			 // 하단 페이징 번호 ([ 게시물 총 갯수 ÷ 한 페이지에 출력할 갯수 ]의 올림)
			 int pageNum = (int)Math.ceil((double)count/postNum);
			  
			 // 출력할 게시물
			 int displayPost =(num-1) * postNum;
			    
			 List<Qlist> list = null; 
			 list = qlist_service.listPage(displayPost, postNum);
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
