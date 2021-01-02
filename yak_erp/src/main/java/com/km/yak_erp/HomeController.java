package com.km.yak_erp;

<<<<<<< HEAD
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
=======
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;

>>>>>>> c4d266d2a62279a024472eb8266d8a5db6e66c54
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

<<<<<<< HEAD
import com.km.yak_erp.service.bqlist_service;
import com.km.yak_erp.vo.Bqlist;
import com.km.yak_erp.dao.bqlist_dao;
=======
import com.km.yak_erp.service.business_question_service;
import com.km.yak_erp.service.search_service;
import com.km.yak_erp.service.statistics_service;
import com.km.yak_erp.util.login_command;
import com.km.yak_erp.vo.Banner;
import com.km.yak_erp.vo.Business_question;
import com.km.yak_erp.vo.Statistics;
>>>>>>> c4d266d2a62279a024472eb8266d8a5db6e66c54

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
<<<<<<< HEAD
	@Resource(name="bqlistService")
	 private bqlist_service bqlist_service;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	List<Bqlist> list = null;
=======
	@Resource(name="statisticsService")
	 private statistics_service statistics_service;
>>>>>>> c4d266d2a62279a024472eb8266d8a5db6e66c54
	
	@Resource(name="business_question_service")
	 private business_question_service bqlist_service;
	
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	List<Business_question> llist = null;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
<<<<<<< HEAD
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
=======
	public ModelAndView home(ModelAndView mv) throws Exception {
		 List<Statistics> list = new ArrayList<Statistics>();
		 List<Statistics> listt = new ArrayList<Statistics>();
		int banner_total = statistics_service.banner_total();
		int banner_monthly = statistics_service.banner_monthly();
		int banner_monthly_total = statistics_service.banner_monthly_total();
		
		 Statistics live = statistics_service.getlive();
		 Statistics today = statistics_service.gettoday();
		 Statistics today_join = statistics_service.gettoday_join();
		 
		 List<Business_question> llist = new ArrayList<Business_question>();
		 llist = bqlist_service.listPage5();
		 
		 
		 list = statistics_service.getweek();
		 listt = statistics_service.getweek_join();
		 
		 mv.addObject("banner_monthly", banner_monthly);
		 mv.addObject("banner_monthly_total", banner_monthly_total);
		 mv.addObject("banner_total", banner_total);
		 mv.addObject("live", live);
		 mv.addObject("list", llist);
		 mv.addObject("today", today);
		 mv.addObject("today_join", today_join);
		 mv.addObject("statistics", list);
		 mv.addObject("statisticss", listt);
		 mv.setViewName("main/home");
		return mv;
	}
	public List<Business_question> getListpage5() throws Exception{
		 
		llist = bqlist_service.listPage5();
		return llist;
>>>>>>> c4d266d2a62279a024472eb8266d8a5db6e66c54
				
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
<<<<<<< HEAD
	@RequestMapping(value = "/Information", method = RequestMethod.GET)
	public ModelAndView Info(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Information");
		return mav;
	}
=======

>>>>>>> c4d266d2a62279a024472eb8266d8a5db6e66c54
	
	@RequestMapping(value = "/Drug_Information", method = RequestMethod.GET)
	public ModelAndView drinfo(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Drug_Information");
		return mav;
	}
	
	

	
}
