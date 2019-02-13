package com.shipin.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.ObjectUtils.Null;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shipin.pojo.Company;
import com.shipin.pojo.Jianli;
import com.shipin.pojo.User;
import com.shipin.service.LoginAndRegisterService;
import com.shipin.service.UserDeliveryService;

import sun.util.logging.resources.logging;

@Controller
public class LoginAndRegisterController {
	
	@Autowired
	LoginAndRegisterService loginAndRegisterService;
	
	@RequestMapping("/logincheck")
	@ResponseBody
	public String logincheck(HttpServletRequest request,Model model,User user){
		
		HttpSession session = request.getSession();
		//System.out.println(user.toString());
		User u = loginAndRegisterService.check(user);
		
		if(u==null){
			return "2";
		}else{
			if(u.getType().equals("2")){
				session.setAttribute("userid", u.getUserid());
				session.setAttribute("nickname", u.getName());
				return "3";
			}
			if(u.getType().equals("3")){
				Company company = loginAndRegisterService.company(u.getUserid());
				session.setAttribute("companyid", company.getCompanyid());
				session.setAttribute("nickname", u.getName());
				return "4";
			}
			if(u.getType().equals("4")){
				session.setAttribute("userid", u.getUserid());
				session.setAttribute("nickname", u.getName());
				return "5";
			}
			if(u.getType().equals("1")){
				session.setAttribute("adminuserid", u.getUserid());
				session.setAttribute("nickname", u.getName());
				return "6";
			}
		}
		
		
		/*int type = Integer.parseInt(request.getParameter("type"));
		int companyid=1;
		int userid=1;
		if(type==3){ // company登录
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
		}*/
		return "1";
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
	@RequestMapping("/realregister")
	@ResponseBody
	public String realregister(HttpServletRequest request,User user){
		//System.out.println("AAAAAAAAAAA"+user.toString());
		User u = loginAndRegisterService.checkuser(user.getUsername());
		if(u!=null){
			return "2";
		}else{
			user.setName(user.getUsername().substring(0, user.getUsername().lastIndexOf("@")));
			loginAndRegisterService.adduser(user);
			if(user.getType().equals("2")){
				User u2 = loginAndRegisterService.checkuser(user.getUsername());
				Jianli jianli = new Jianli();
				jianli.setUserid(u2.getUserid());
				jianli.setUpdatetime(getnow());
				jianli.setJianliname(u2.getName());
				loginAndRegisterService.addjianli(jianli);
				return "1";
			}else{
				User u2 = loginAndRegisterService.checkuser(user.getUsername());
				loginAndRegisterService.addcompany(u2.getUserid());
				return "1";
			}
			
		}
	}
	//进行日期格式转换
		public  Date getnow(){
			Date date=new java.util.Date();
			java.sql.Date sqlDate=new java.sql.Date(date.getTime());
			return sqlDate;
		}
}
