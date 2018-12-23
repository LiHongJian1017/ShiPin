package com.shipin.controller;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.ibatis.type.IntegerTypeHandler;
import org.apache.taglibs.standard.tag.common.sql.SetDataSourceTagSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.shipin.pojo.Company;
import com.shipin.pojo.Delivery;
import com.shipin.pojo.Position;
import com.shipin.pojo.TiaojianVo;
import com.shipin.service.CompanyhomeService;

import cn.itcast.utils.Page;

import com.shipin.service.CompanyDeliveryService;
import com.shipin.service.CompanyPositionService;

@Controller
public class CompanyDeliveryController {
	
	@Autowired
	CompanyDeliveryService companyDeliveryService;

	@RequestMapping("/interviewresumes")
	public String interviewresumes(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("companyid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			int companyid = Integer.parseInt(session.getAttribute("companyid").toString());
			int start = 0;
			int yema = 1;
			Map map=new HashMap();  
			Object object = request.getParameter("page");
			if(object == null){		
				map.put("start",start);  
			}else{
				start = ((Integer.parseInt(request.getParameter("page").toString())-1)*6);
				map.put("start",start);  
				yema = Integer.parseInt(request.getParameter("page").toString());
			}  
			map.put("companyid",companyid+"");  
			map.put("status", "1");
			List<Delivery> listDelivery = companyDeliveryService.delivery(map);
			int count = companyDeliveryService.count(map);
			Page<Delivery> page = new Page<Delivery>();
			page.setTotal(count);		//数据总数
			page.setSize(6);	//每页显示条数
			page.setPage(yema); //当前页数
			page.setRows(listDelivery);	//数据列表
			
			model.addAttribute("page", page);
			model.addAttribute("count", count);
			model.addAttribute("listDelivery", listDelivery);
			model.addAttribute("experience", "不限");
			model.addAttribute("education", "不限");
			//System.out.println(listDelivery.toString());
			return "com/interviewresumes";
		}
	}
	@RequestMapping("/havenoticeresumes")
	public String havenoticeresumes(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("companyid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			int companyid = Integer.parseInt(session.getAttribute("companyid").toString());
			int start = 0;
			int yema = 1;
			Map map=new HashMap();  
			Object object = request.getParameter("page");
			if(object == null){		
				map.put("start",start);  
			}else{
				start = ((Integer.parseInt(request.getParameter("page").toString())-1)*6);
				map.put("start",start);  
				yema = Integer.parseInt(request.getParameter("page").toString());
			}
			map.put("companyid",companyid+"");  
			map.put("status", "2");
			List<Delivery> listDelivery = companyDeliveryService.delivery(map);
			int count = companyDeliveryService.count(map);
			Page<Delivery> page = new Page<Delivery>();
			page.setTotal(count);		//数据总数
			page.setSize(6);	//每页显示条数
			page.setPage(yema); //当前页数
			page.setRows(listDelivery);	//数据列表
			
			model.addAttribute("page", page);
			model.addAttribute("count", count);
			model.addAttribute("listDelivery", listDelivery);
			model.addAttribute("experience", "不限");
			model.addAttribute("education", "不限");
			//System.out.println(listDelivery.toString());
			return "com/havenoticeresumes";
		}
	}
	@RequestMapping("/haverefuseresumes")
	public String haverefuseresumes(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("companyid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			int companyid = Integer.parseInt(session.getAttribute("companyid").toString());
			int start = 0;
			int yema = 1;
			Map map=new HashMap();  
			Object object = request.getParameter("page");
			if(object == null){		
				map.put("start",start);  
			}else{
				start = ((Integer.parseInt(request.getParameter("page").toString())-1)*6);
				map.put("start",start);  
				yema = Integer.parseInt(request.getParameter("page").toString());
			}
			
			map.put("companyid",companyid+"");  
			map.put("status", "3");
			List<Delivery> listDelivery = companyDeliveryService.delivery(map);
			int count = companyDeliveryService.count(map);
			Page<Delivery> page = new Page<Delivery>();
			page.setTotal(count);		//数据总数
			page.setSize(6);	//每页显示条数
			page.setPage(yema); //当前页数
			page.setRows(listDelivery);	//数据列表
			
			model.addAttribute("page", page);
			model.addAttribute("count", count);
			model.addAttribute("listDelivery", listDelivery);
			model.addAttribute("experience", "不限");
			model.addAttribute("education", "不限");
			//System.out.println(listDelivery.toString());
			return "com/haverefuseresumes";
		}
	}
	@RequestMapping("/autofilterresumes")
	public String autofilterresumes(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("companyid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			int companyid = Integer.parseInt(session.getAttribute("companyid").toString());
			int start = 0;
			int yema = 1;
			Map map=new HashMap();  
			Object object = request.getParameter("page");
			if(object == null){		
				map.put("start",start);  
			}else{
				start = ((Integer.parseInt(request.getParameter("page").toString())-1)*6);
				map.put("start",start);  
				yema = Integer.parseInt(request.getParameter("page").toString());
			}
			map.put("companyid",companyid+"");  
			map.put("status", "4");
			List<Delivery> listDelivery = companyDeliveryService.delivery(map);
			int count = companyDeliveryService.count(map);
			Page<Delivery> page = new Page<Delivery>();
			page.setTotal(count);		//数据总数
			page.setSize(6);	//每页显示条数
			page.setPage(yema); //当前页数
			page.setRows(listDelivery);	//数据列表
			
			model.addAttribute("page", page);
			model.addAttribute("count", count);
			model.addAttribute("listDelivery", listDelivery);
			model.addAttribute("experience", "不限");
			model.addAttribute("education", "不限");
			//System.out.println(listDelivery.toString());
			System.out.println("AAAAAAAAAAAAAAAAA"+count);
			return "com/autofilterresumes";
		}
	}
	@RequestMapping("/caninterviewresumes")
	public String caninterviewresumes(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("companyid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			int companyid = Integer.parseInt(session.getAttribute("companyid").toString());
			int start = 0;
			int yema = 1;
			Map map=new HashMap();  
			Object object = request.getParameter("page");
			if(object == null){		
				map.put("start",start);  
			}else{
				start = ((Integer.parseInt(request.getParameter("page").toString())-1)*6);
				map.put("start",start);  
				yema = Integer.parseInt(request.getParameter("page").toString());
			}
			
			map.put("companyid",companyid+"");  
			map.put("status", "0");
			List<Delivery> listDelivery = companyDeliveryService.delivery(map);
			int count = companyDeliveryService.count(map);
			
			Page<Delivery> page = new Page<Delivery>();
			page.setTotal(count);		//数据总数
			page.setSize(6);	//每页显示条数
			page.setPage(yema); //当前页数
			page.setRows(listDelivery);	//数据列表
			
			model.addAttribute("page", page);
			
			model.addAttribute("count", count);
			model.addAttribute("listDelivery", listDelivery);
			model.addAttribute("experience", "不限");
			model.addAttribute("education", "不限");
			//System.out.println(listDelivery.toString());
			//System.out.println("AAAAAAAAAAAAAAAAA"+count);
			return "com/caninterviewresumes";
		}
	}
	
	@RequestMapping("/deliverystatus")
	public String deliverystatus(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("companyid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			int deliveryid = Integer.parseInt(request.getParameter("deliveryid").toString());
			int status =  Integer.parseInt(request.getParameter("status").toString());
			String flag = request.getParameter("flag").toString();
			Map<String,String> map=new HashMap<String,String>();  
			map.put("deliveryid",deliveryid+"");  
			map.put("status", status+"");
			companyDeliveryService.deliverystatus(map);
			if(flag.equals("0")){
				return "redirect:caninterviewresumes.action";
			}else if(flag.equals("1")){
				return "redirect:interviewresumes.action";
			}else if(flag.equals("2")){
				return "redirect:havenoticeresumes.action";
			}else if(flag.equals("3")){
				return "redirect:haverefuseresumes.action";
			}else{
				return "redirect:autofilterresumes.action";
			}
		}
	}
	
	@RequestMapping("/caninterviewresumestiaojian")
	public String caninterviewresumestiaojian(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("companyid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			int companyid = Integer.parseInt(session.getAttribute("companyid").toString());
			int start = 0;
			int yema = 1;
			Map map=new HashMap();  
			Object object = request.getParameter("page");
			if(object == null){		
				map.put("start",start);  
			}else{
				start = ((Integer.parseInt(request.getParameter("page").toString())-1)*6);
				map.put("start",start);  
				yema = Integer.parseInt(request.getParameter("page").toString());
			}

			String experience = "不限";
			String education = "不限";
			String realexperiencestart;//大于等于
			String realexperienceend;//小于
			String realeducation;//大于等于
			realexperiencestart=request.getParameter("realexperiencestart").toString();
			realexperienceend=request.getParameter("realexperienceend").toString();
			realeducation=request.getParameter("realeducation").toString();
			if(realexperiencestart.equals("-1")){
				experience="不限";
			}else if(realexperiencestart.equals("0")){
				experience="应届毕业生";
			}else if(realexperiencestart.equals("1")){
				experience="1年至3年";
			}else if(realexperiencestart.equals("3")){
				experience="3年至5年";
			}else if(realexperiencestart.equals("5")){
				experience="5年至10年";
			}else{
				experience="10年及以上";
			}
			
			if(realeducation.equals("0")){
				education="不限";
			}else if(realeducation.equals("1")){
				education="大专及以上";
			}else if(realeducation.equals("2")){
				education="本科及以上";
			}else if(realeducation.equals("3")){
				education="本科及以上";
			}else{
				education="博士及以上";
			}
			
			map.put("companyid",companyid+""); 
			map.put("status", "0");
			map.put("realexperiencestart", realexperiencestart);
			map.put("realexperienceend", realexperienceend);
			map.put("realeducation", realeducation);
			List<Delivery> listDelivery = companyDeliveryService.deliverytiaojian(map);
			
			int count = companyDeliveryService.count(map);
			int counttiaojian = companyDeliveryService.counttiaojian(map);
			Page<Delivery> page = new Page<Delivery>();
			page.setTotal(counttiaojian);		//数据总数
			page.setSize(6);	//每页显示条数
			page.setPage(yema); //当前页数
			page.setRows(listDelivery);	//数据列表
			
			model.addAttribute("page", page);
			model.addAttribute("count", count);
			model.addAttribute("listDelivery", listDelivery);
			model.addAttribute("experience", experience);
			model.addAttribute("education", education);
			
			//System.out.println("AAAAAAAAAAAAAA"+companyid+" "+experience+" "+education+" "+realexperiencestart+" "+realexperienceend+" "+realeducation);
			return "com/caninterviewresumes";
		}
	}	
	@RequestMapping("/interviewresumestiaojian")
	public String interviewresumestiaojian(HttpServletRequest request,Model model) throws UnsupportedEncodingException{
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("companyid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			int companyid = Integer.parseInt(session.getAttribute("companyid").toString());
			int start = 0;
			int yema = 1;
			Map map=new HashMap();  
			Object object = request.getParameter("page");
			if(object == null){		
				map.put("start",start);  
			}else{
				start = ((Integer.parseInt(request.getParameter("page").toString())-1)*6);
				map.put("start",start);  
				yema = Integer.parseInt(request.getParameter("page").toString());
			}

			String experience = "不限";
			String education = "不限";
			String realexperiencestart;//大于等于
			String realexperienceend;//小于
			String realeducation;//大于等于
			realexperiencestart=request.getParameter("realexperiencestart").toString();
			realexperienceend=request.getParameter("realexperienceend").toString();
			realeducation=request.getParameter("realeducation").toString();
			if(realexperiencestart.equals("-1")){
				experience="不限";
			}else if(realexperiencestart.equals("0")){
				experience="应届毕业生";
			}else if(realexperiencestart.equals("1")){
				experience="1年至3年";
			}else if(realexperiencestart.equals("3")){
				experience="3年至5年";
			}else if(realexperiencestart.equals("5")){
				experience="5年至10年";
			}else{
				experience="10年及以上";
			}
			
			if(realeducation.equals("0")){
				education="不限";
			}else if(realeducation.equals("1")){
				education="大专及以上";
			}else if(realeducation.equals("2")){
				education="本科及以上";
			}else if(realeducation.equals("3")){
				education="本科及以上";
			}else{
				education="博士及以上";
			}
			
			map.put("companyid",companyid+""); 
			map.put("status", "1");
			map.put("realexperiencestart", realexperiencestart);
			map.put("realexperienceend", realexperienceend);
			map.put("realeducation", realeducation);
			List<Delivery> listDelivery = companyDeliveryService.deliverytiaojian(map);
			int count = companyDeliveryService.count(map);
			int counttiaojian = companyDeliveryService.counttiaojian(map);
			Page<Delivery> page = new Page<Delivery>();
			page.setTotal(counttiaojian);		//数据总数
			page.setSize(6);	//每页显示条数
			page.setPage(yema); //当前页数
			page.setRows(listDelivery);	//数据列表
			
			model.addAttribute("page", page);
			model.addAttribute("count", count);
			model.addAttribute("listDelivery", listDelivery);
			model.addAttribute("experience", experience);
			model.addAttribute("education", education);
			
			//System.out.println("AAAAAAAAAAAAAA"+companyid+" "+experience+" "+education+" "+realexperiencestart+" "+realexperienceend+" "+realeducation);
			return "com/interviewresumes";
		}
	}	
	@RequestMapping("/havenoticeresumestiaojian")
	public String havenoticeresumestiaojian(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("companyid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			int companyid = Integer.parseInt(session.getAttribute("companyid").toString());
			int start = 0;
			int yema = 1;
			Map map=new HashMap();  
			Object object = request.getParameter("page");
			if(object == null){		
				map.put("start",start);  
			}else{
				start = ((Integer.parseInt(request.getParameter("page").toString())-1)*6);
				map.put("start",start);  
				yema = Integer.parseInt(request.getParameter("page").toString());
			}

			String experience = "不限";
			String education = "不限";
			String realexperiencestart;//大于等于
			String realexperienceend;//小于
			String realeducation;//大于等于
			realexperiencestart=request.getParameter("realexperiencestart").toString();
			realexperienceend=request.getParameter("realexperienceend").toString();
			realeducation=request.getParameter("realeducation").toString();
			if(realexperiencestart.equals("-1")){
				experience="不限";
			}else if(realexperiencestart.equals("0")){
				experience="应届毕业生";
			}else if(realexperiencestart.equals("1")){
				experience="1年至3年";
			}else if(realexperiencestart.equals("3")){
				experience="3年至5年";
			}else if(realexperiencestart.equals("5")){
				experience="5年至10年";
			}else{
				experience="10年及以上";
			}
			
			if(realeducation.equals("0")){
				education="不限";
			}else if(realeducation.equals("1")){
				education="大专及以上";
			}else if(realeducation.equals("2")){
				education="本科及以上";
			}else if(realeducation.equals("3")){
				education="本科及以上";
			}else{
				education="博士及以上";
			}

			map.put("companyid",companyid+""); 
			map.put("status", "2");
			map.put("realexperiencestart", realexperiencestart);
			map.put("realexperienceend", realexperienceend);
			map.put("realeducation", realeducation);
			List<Delivery> listDelivery = companyDeliveryService.deliverytiaojian(map);
			
			int count = companyDeliveryService.count(map);
			int counttiaojian = companyDeliveryService.counttiaojian(map);
			Page<Delivery> page = new Page<Delivery>();
			page.setTotal(counttiaojian);		//数据总数
			page.setSize(6);	//每页显示条数
			page.setPage(yema); //当前页数
			page.setRows(listDelivery);	//数据列表
			
			model.addAttribute("page", page);
			model.addAttribute("count", count);
			model.addAttribute("listDelivery", listDelivery);
			model.addAttribute("experience", experience);
			model.addAttribute("education", education);
			
			//System.out.println("AAAAAAAAAAAAAA"+companyid+" "+experience+" "+education+" "+realexperiencestart+" "+realexperienceend+" "+realeducation);
			return "com/havenoticeresumes";
		}
	}	
	@RequestMapping("/haverefuseresumestiaojian")
	public String haverefuseresumestiaojian(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("companyid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			int companyid = Integer.parseInt(session.getAttribute("companyid").toString());
			int start = 0;
			int yema = 1;
			Map map=new HashMap();  
			Object object = request.getParameter("page");
			if(object == null){		
				map.put("start",start);  
			}else{
				start = ((Integer.parseInt(request.getParameter("page").toString())-1)*6);
				map.put("start",start);  
				yema = Integer.parseInt(request.getParameter("page").toString());
			}

			String experience = "不限";
			String education = "不限";
			String realexperiencestart;//大于等于
			String realexperienceend;//小于
			String realeducation;//大于等于
			realexperiencestart=request.getParameter("realexperiencestart").toString();
			realexperienceend=request.getParameter("realexperienceend").toString();
			realeducation=request.getParameter("realeducation").toString();
			if(realexperiencestart.equals("-1")){
				experience="不限";
			}else if(realexperiencestart.equals("0")){
				experience="应届毕业生";
			}else if(realexperiencestart.equals("1")){
				experience="1年至3年";
			}else if(realexperiencestart.equals("3")){
				experience="3年至5年";
			}else if(realexperiencestart.equals("5")){
				experience="5年至10年";
			}else{
				experience="10年及以上";
			}
			
			if(realeducation.equals("0")){
				education="不限";
			}else if(realeducation.equals("1")){
				education="大专及以上";
			}else if(realeducation.equals("2")){
				education="本科及以上";
			}else if(realeducation.equals("3")){
				education="本科及以上";
			}else{
				education="博士及以上";
			}

			 
			map.put("companyid",companyid+""); 
			map.put("status", "3");
			map.put("realexperiencestart", realexperiencestart);
			map.put("realexperienceend", realexperienceend);
			map.put("realeducation", realeducation);
			List<Delivery> listDelivery = companyDeliveryService.deliverytiaojian(map);
			
			int count = companyDeliveryService.count(map);
			int counttiaojian = companyDeliveryService.counttiaojian(map);
			Page<Delivery> page = new Page<Delivery>();
			page.setTotal(counttiaojian);		//数据总数
			page.setSize(6);	//每页显示条数
			page.setPage(yema); //当前页数
			page.setRows(listDelivery);	//数据列表
			
			model.addAttribute("page", page);
			model.addAttribute("count", count);
			model.addAttribute("listDelivery", listDelivery);
			model.addAttribute("experience", experience);
			model.addAttribute("education", education);
			
			//System.out.println("AAAAAAAAAAAAAA"+companyid+" "+experience+" "+education+" "+realexperiencestart+" "+realexperienceend+" "+realeducation);
			return "com/haverefuseresumes";
		}
	}
	@RequestMapping("/autofilterresumestiaojian")
	public String autofilterresumestiaojian(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("companyid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			int companyid = Integer.parseInt(session.getAttribute("companyid").toString());
			int start = 0;
			int yema = 1;
			Map map=new HashMap();  
			Object object = request.getParameter("page");
			if(object == null){		
				map.put("start",start);  
			}else{
				start = ((Integer.parseInt(request.getParameter("page").toString())-1)*6);
				map.put("start",start);  
				yema = Integer.parseInt(request.getParameter("page").toString());
			}

			String experience = "不限";
			String education = "不限";
			String realexperiencestart;//大于等于
			String realexperienceend;//小于
			String realeducation;//大于等于
			realexperiencestart=request.getParameter("realexperiencestart").toString();
			realexperienceend=request.getParameter("realexperienceend").toString();
			realeducation=request.getParameter("realeducation").toString();
			if(realexperiencestart.equals("-1")){
				experience="不限";
			}else if(realexperiencestart.equals("0")){
				experience="应届毕业生";
			}else if(realexperiencestart.equals("1")){
				experience="1年至3年";
			}else if(realexperiencestart.equals("3")){
				experience="3年至5年";
			}else if(realexperiencestart.equals("5")){
				experience="5年至10年";
			}else{
				experience="10年及以上";
			}
			
			if(realeducation.equals("0")){
				education="不限";
			}else if(realeducation.equals("1")){
				education="大专及以上";
			}else if(realeducation.equals("2")){
				education="本科及以上";
			}else if(realeducation.equals("3")){
				education="本科及以上";
			}else{
				education="博士及以上";
			}
			
			map.put("companyid",companyid+""); 
			map.put("status", "4");
			map.put("realexperiencestart", realexperiencestart);
			map.put("realexperienceend", realexperienceend);
			map.put("realeducation", realeducation);
			List<Delivery> listDelivery = companyDeliveryService.deliverytiaojian(map);
			
			int count = companyDeliveryService.count(map);
			int counttiaojian = companyDeliveryService.counttiaojian(map);
			Page<Delivery> page = new Page<Delivery>();
			page.setTotal(counttiaojian);		//数据总数
			page.setSize(6);	//每页显示条数
			page.setPage(yema); //当前页数
			page.setRows(listDelivery);	//数据列表
			
			model.addAttribute("page", page);
			model.addAttribute("count", count);
			model.addAttribute("listDelivery", listDelivery);
			model.addAttribute("experience", experience);
			model.addAttribute("education", education);
			
			//System.out.println("AAAAAAAAAAAAAA"+companyid+" "+experience+" "+education+" "+realexperiencestart+" "+realexperienceend+" "+realeducation);
			return "com/autofilterresumes";
		}
	}
	
	@RequestMapping("/auditpreview")
	public String auditpreview(HttpServletRequest request,Model model){
		int deliveryid = Integer.parseInt(request.getParameter("deliveryid"));
		Delivery delivery= companyDeliveryService.auditpreview(deliveryid);
		model.addAttribute("delivery", delivery);
		return "com/auditpreview";
	}
	
	//进行日期格式转换
	public  Date getnow(){
		Date date=new java.util.Date();
		java.sql.Date sqlDate=new java.sql.Date(date.getTime());
		return sqlDate;
	}
}
