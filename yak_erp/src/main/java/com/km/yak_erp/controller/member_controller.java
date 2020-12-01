package com.km.yak_erp.controller;

import java.io.PrintWriter;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.km.yak_erp.exception.IdPasswordNotMatchingException;
import com.km.yak_erp.service.member_service;
import com.km.yak_erp.util.AuthInfo;
import com.km.yak_erp.util.login_command;




@Controller
public class member_controller {
	 @RequestMapping(value="/login", method=RequestMethod.GET)
	    public ModelAndView loginForm(login_command login_command,
	                    @CookieValue(value="REMEMBER", required=false) Cookie rememberCookie) throws Exception {
	        
	        if(rememberCookie!=null) {
	        	login_command.setId(rememberCookie.getValue());
	        	login_command.setRememberId(true);
	        }
	        
	        ModelAndView mv = new ModelAndView("login");
	        return mv;
	    }
	 
	  
	@Resource(name="memberService")
 private member_service memberSer;

 @RequestMapping(value="/login", method=RequestMethod.POST)
 public ModelAndView loginSuccess(@Valid login_command loginCommand, BindingResult bindingResult,
                                 HttpSession session, HttpServletResponse response) throws Exception {

     if(bindingResult.hasErrors()) {
         ModelAndView mv = new ModelAndView("login");
         return mv;
     }
     
     try {
         
         AuthInfo authInfo = memberSer.loginAuth(loginCommand);
         session.setAttribute("authInfo", authInfo);
         
         Cookie rememberCookie = new Cookie("REMEMBER", loginCommand.getId());
         rememberCookie.setPath("/");
         if(loginCommand.isRememberId()) {
             rememberCookie.setMaxAge(60*60*24*7);
         } else {
             rememberCookie.setMaxAge(0);
         }
         response.addCookie(rememberCookie);
         
     } catch (IdPasswordNotMatchingException e) {
         bindingResult.rejectValue("pw", "notMatch", "아이디와 비밀번호가 맞지않습니다.");
         ModelAndView mv = new ModelAndView("login");
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
	
	
	
}
