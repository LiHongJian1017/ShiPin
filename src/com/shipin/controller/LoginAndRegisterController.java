package com.shipin.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.ObjectUtils.Null;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginAndRegisterController {
	
	
	@RequestMapping("/logincheck")
	public String logincheck(HttpServletRequest request,Model model){
		
		HttpSession session = request.getSession();
		int type = Integer.parseInt(request.getParameter("type"));
		int companyid=1;
		int userid=1;
		if(type==3){ // companyµÇÂ¼
			session.setAttribute("companyid", companyid);
			session.setAttribute("type", type);
			return "redirect:myhome.action";
		}
		else if(type==2){
			session.setAttribute("userid", userid);
			return "redirect:index.action";
		}else if(type==1){
			return "redirect:index.action";
		}else{
			return "Login";
		}
	}
	@RequestMapping("/login")
	public String login(HttpServletRequest request){
		HttpSession session=request.getSession();
		session.invalidate();
		return "Login";
	}
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request){
		HttpSession session=request.getSession();
		session.invalidate(); 
		return "redirect:login.action";
	}
	@RequestMapping("/register")
	public String register(){
		return "Register";
	}

}
