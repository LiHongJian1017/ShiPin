package com.shipin.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.shipin.pojo.Certification;
import com.shipin.pojo.Position;
import com.shipin.pojo.User;
import com.shipin.service.ReviewService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class ReviewController {
	
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping("/reviewlist")
	public String nindex(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("userid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			Map map=new HashMap();  
			int  start;
			int count=0;
			int page = Integer.parseInt(request.getParameter("page"));
			start = 9*(page-1);
			map.put("start", start);
			List<Certification> listCertification =reviewService.allCertification(map);
			count = reviewService.countCertification(map);
			int pageall=count/9;
			if(count%9!=0){
				pageall=pageall+1;
			}
			model.addAttribute("page", page);
			model.addAttribute("pageall", pageall);
			model.addAttribute("listCertification", listCertification);
			return "review/reviewlist";
		}
	}
	
	@RequestMapping("/positionlist")
	public String positionlist(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("userid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			Map map=new HashMap();  
			int  start;
			int count=0;
			int page = Integer.parseInt(request.getParameter("page"));
			int type = Integer.parseInt(request.getParameter("type"));
			start = 9*(page-1);
			map.put("start", start);
			map.put("status", 1);
			if(type==0){
				map.put("number", null);
			}else if(type==1){
				map.put("number", 1);
			}else{
				map.put("number", 0);
			}
			
			List<Position> listposition =reviewService.selectPosition(map);
			count = reviewService.countPosition(map);
			int pageall=count/9;
			if(count%9!=0){
				pageall=pageall+1;
			}
			model.addAttribute("type", type);
			model.addAttribute("page", page);
			model.addAttribute("pageall", pageall);
			model.addAttribute("listposition", listposition);
			return "review/positionlist";
		}
	}
	
	@RequestMapping("/setnumber")
	@ResponseBody
	public String setnumber(HttpServletRequest request){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("userid");
		if(obj==null){
			return "0";
		}else{
			int positionid = Integer.parseInt(request.getParameter("positionid"));
			int number = Integer.parseInt(request.getParameter("number"));
			Map map=new HashMap();  
			map.put("positionid", positionid);
			map.put("number", number);
			reviewService.setnumber(map);
			return "1";
		}
	}
	@RequestMapping("/certificationdetail")
	@ResponseBody
	public Certification certificationdetail(HttpServletRequest request,Certification certification){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("userid");
		if(obj==null){
			return null;
		}else{
			int userid = certification.getUserid();
			Map map=new HashMap();  
			map.put("userid", userid);
			Certification certification1 =reviewService.Certification(map);
			return certification1;
		}
	}
	@RequestMapping("/tuihui")
	@ResponseBody
	public String tuihui(HttpServletRequest request,Certification certification){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("userid");
		if(obj==null){
			return "0";
		}else{
			int userid = certification.getUserid();
			String reason = certification.getReason();
			Map map=new HashMap();  
			map.put("userid", userid);
			map.put("reason", reason);
			map.put("status", 2);
			reviewService.tuihuiCertification(map);
			return "1";
		}
	}
	@RequestMapping("/tongguo")
	@ResponseBody
	public String tongguo(HttpServletRequest request,Certification certification){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("userid");
		if(obj==null){
			return "0";
		}else{
			int userid = certification.getUserid();
			String certificatename = certification.getCertificatename();
			Map map=new HashMap();  
			map.put("userid", userid);
			//map.put("certificatename", certificatename);
			map.put("status", 1);
			reviewService.tongguoCertification(map);
			Map newmap=new HashMap(); 
			newmap.put("userid", userid);
			newmap.put("certification", certificatename);
			reviewService.updatejianli(newmap);
			return "1";
		}
	}
	@RequestMapping("/account")
	public String account(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("userid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			return "review/account";
		}
	}
	
	@RequestMapping("/updatepassword")
	@ResponseBody
	public String updatepassword(HttpServletRequest request,Model model,User user){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("userid");
		if(obj==null){
			return "0";
		}else{
			int userid = Integer.parseInt(session.getAttribute("userid").toString());
			String password = user.getPassword();
			//System.out.println("AAAAAAAAAAAAAAAAAAAAAAAAAAAA"+userid+" "+password);
			Map map=new HashMap();  
			map.put("userid", userid);
			map.put("password", password);
			reviewService.updatepassword(map);
			return "1";
		}
	}
}
