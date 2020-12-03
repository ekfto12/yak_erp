package com.km.yak_erp;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.km.yak_erp.util.login_command;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main/home");
		return mav;
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
