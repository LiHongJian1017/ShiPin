package com.shipin.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NotloginController {
	@RequestMapping("/nindex")
	public String nindex(){
		return "nindex";
	}
	@RequestMapping("/njoblist")
	public String njoblist(HttpServletRequest request){
//		String str = request.getParameter("zhiwei");   
//		System.out.println(str);
		return "njoblist";
	}
	@RequestMapping("/ncompanylist")
	public String ncompanylist(HttpServletRequest request){
		String str = request.getParameter("gongsi");   
		System.out.println(str);
		return "ncompanylist";
	}
}
