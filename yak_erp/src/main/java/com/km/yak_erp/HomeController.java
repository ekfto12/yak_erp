package com.km.yak_erp;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.km.yak_erp.service.business_question_service;
import com.km.yak_erp.service.search_service;
import com.km.yak_erp.service.statistics_service;
import com.km.yak_erp.util.login_command;
import com.km.yak_erp.vo.Banner;
import com.km.yak_erp.vo.Business_question;
import com.km.yak_erp.vo.Statistics;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Resource(name="statisticsService")
	 private statistics_service statistics_service;
	
	@Resource(name="business_question_service")
	 private business_question_service bqlist_service;
	
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	List<Business_question> llist = null;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
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
				
	}
	
	@RequestMapping("/blist")
    public String blist() throws Exception {
        return "blist";
    }
	@RequestMapping("/dlist")
    public String dlist() throws Exception {
        return "dlist";
    }
	@RequestMapping("/mlist")
    public String mlist() throws Exception {
        return "mlist";
    }
	@RequestMapping("/b_quesList")
	public String b_quesList() throws Exception {
		return "b_quesList";
	}
	@RequestMapping("/m_quesList")
	public String m_quesList() throws Exception {
		return "m_quesList";
	}

	
	@RequestMapping(value = "/Drug_Information", method = RequestMethod.GET)
	public ModelAndView drinfo(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Drug_Information");
		return mav;
	}
	
	

	
}
