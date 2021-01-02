package com.km.yak_erp;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.km.yak_erp.service.bqlist_service;
import com.km.yak_erp.vo.Bqlist;
import com.km.yak_erp.dao.bqlist_dao;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Resource(name="bqlistService")
	 private bqlist_service bqlist_service;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	List<Bqlist> list = null;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(Model model) throws Exception {
		
		List<Bqlist> list = new ArrayList<Bqlist>();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main/home");
		
		list = bqlist_service.listPage5();
		model.addAttribute("list",list);
		return mav;		
		
	}
	public List<Bqlist> getListpage5() throws Exception{
		 
		list = bqlist_service.listPage5();
		return list;
				
	}
	

 /*
	@RequestMapping("/dlist")
    public String dlist() throws Exception {
        return "dlist";
    }
	@RequestMapping("/mlist")
    public String mlist() throws Exception {
        return "mlist";
    }
	*/
	
	@RequestMapping("/register")
	public String register() throws Exception {
		return "register";
	}
	@RequestMapping("/Member_register")
	public String Member_register() throws Exception {
		return "Member_register";
	}
	@RequestMapping(value = "/Information", method = RequestMethod.GET)
	public ModelAndView Info(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Information");
		return mav;
	}
	
	@RequestMapping(value = "/Drug_Information", method = RequestMethod.GET)
	public ModelAndView drinfo(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Drug_Information");
		return mav;
	}
	
	@RequestMapping(value = "/Member_Information", method = RequestMethod.GET)
	public ModelAndView M_info(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Member_Information");
		return mav;
	}
	

	
	
}
