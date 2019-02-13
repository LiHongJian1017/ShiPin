package com.shipin.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shipin.pojo.Company;
import com.shipin.pojo.User;
import com.shipin.service.PasswordService;

@Controller
public class CompanyController {
	
	@Autowired
	private PasswordService passwordService;
	
	@RequestMapping("/comupdatepassword")
	public String updatecompanytop(HttpServletRequest request,Model model) throws IllegalStateException, IOException{		
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("companyid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			return "com/updatepassword";
		}
	}
	@RequestMapping("/cupdatepassword")
	@ResponseBody
	public String cupdatepassword(HttpServletRequest request,Model model) {
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("companyid");
		if(obj==null){
			return "0";
		}else{
			int companyid = Integer.parseInt(session.getAttribute("companyid").toString());
			String oldpassword = request.getParameter("oldPassword").toString();
			String newpassword = request.getParameter("newPassword").toString();
			Map map = new HashMap();
			map.put("companyid", companyid);
			map.put("password", oldpassword);
			User user = passwordService.selectuser(map);
			if(user==null){
				return "1";
			}else{
				int userid = user.getUserid();
				Map newmap = new HashMap();
				newmap.put("userid", userid);
				newmap.put("password", newpassword);
				passwordService.updatepassword(newmap);
				return "2";
			}
			
		}
	}
	
}
