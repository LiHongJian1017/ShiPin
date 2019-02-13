package com.shipin.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.shipin.pojo.Collection;
import com.shipin.pojo.Company;
import com.shipin.pojo.Delivery;
import com.shipin.pojo.Jianli;
import com.shipin.pojo.Lianheposition;
import com.shipin.pojo.Posandcom;
import com.shipin.pojo.Posandcomanddel;
import com.shipin.pojo.Position;
import com.shipin.pojo.User;
import com.shipin.pojo.Certification;
import com.shipin.service.CompanyDeliveryService;
import com.shipin.service.JianliService;
import com.shipin.service.PasswordService;
import com.shipin.service.PosandcomService;
import com.shipin.service.UserCertificationService;
import com.shipin.service.UserDeliveryService;

@Controller
public class UserController {
	
	@Autowired
	private PosandcomService posandcomService;
	@Autowired
	private UserDeliveryService userDeliveryService;
	@Autowired
	private JianliService jianliService;
	@Autowired
	private UserCertificationService userCertificationService;
	@Autowired
	private PasswordService passwordService;
	
	@RequestMapping("/index")
	public String index(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("userid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			List<Posandcom> listPosandcomtime =posandcomService.selectordertime();
			List<Posandcom> listPosandcomnumber =posandcomService.selectordernumber();
			List<Position> listPosition =posandcomService.selectremen();
			model.addAttribute("listPosition", listPosition);
			model.addAttribute("listPosandcomtime", listPosandcomtime);
			model.addAttribute("listPosandcomnumber", listPosandcomnumber);
			return "tea/index";
		}
	}
	@RequestMapping("/jobdetail")
	public String jobdetail(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("userid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			int userid = Integer.parseInt(session.getAttribute("userid").toString());
			int positionid = Integer.parseInt(request.getParameter("positionid"));
			int companyid = Integer.parseInt(request.getParameter("companyid"));
			Map map=new HashMap();  
			map.put("userid",userid);  
			map.put("positionid",positionid);   
			posandcomService.addone(positionid);
			Position position = posandcomService.selectposition(positionid);
			Company company = posandcomService.selectcompany(companyid);
			Collection collection = posandcomService.selectcollection(map);
			List<Lianheposition> lianheposition = posandcomService.selectlianheposition(company.getCompanyid());
			model.addAttribute("userid", userid);
			model.addAttribute("position", position);
			model.addAttribute("company", company);
			model.addAttribute("collection", collection);
			model.addAttribute("lianheposition", lianheposition);
			return "tea/jobdetail";
		}
		
	}
	@RequestMapping("/companydetail")
	public String companydetail(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("userid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			int companyid = Integer.parseInt(request.getParameter("companyid"));
			Company company = posandcomService.selectcompany(companyid);
			List<Position> listPosition = posandcomService.select_position(companyid);
			List<Lianheposition> lianheposition = posandcomService.selectlianheposition(companyid);
			model.addAttribute("company", company);
			model.addAttribute("listPosition", listPosition);
			model.addAttribute("lianheposition",lianheposition);
			return "tea/companydetail";
		}
	}
	@RequestMapping("/collection")
	public void collection(HttpServletRequest request){
		int positionid = Integer.parseInt(request.getParameter("positionid"));
		int userid = Integer.parseInt(request.getParameter("userid"));
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		Map map=new HashMap();  
		map.put("userid",userid);  
		map.put("positionid",positionid);  
		map.put("updatetime",df.format(new Date()));  
		posandcomService.collection(map);
		
	}
	@RequestMapping("/concelcollection")
	public void concelcollection(HttpServletRequest request){
		int positionid = Integer.parseInt(request.getParameter("positionid"));
		int userid = Integer.parseInt(request.getParameter("userid"));
		Map map=new HashMap();  
		Date updatetime = getnow();
		map.put("userid",userid);  
		map.put("positionid",positionid);  
		posandcomService.concelcollection(map);
		
	}
	@RequestMapping("/selectjob")
	public String selectjob(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("userid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			Map map=new HashMap();  
			int  start;
			String positionname = request.getParameter("positionname");
			String workaddress = request.getParameter("workaddress");
			String salary = request.getParameter("salary");
			String experience = request.getParameter("experience");
			String education = request.getParameter("education");
			String positionnature = request.getParameter("positionnature");
			int page = Integer.parseInt(request.getParameter("page"));
			start = 9*(page-1);
			if(positionname!=null&&positionname!=""){
				map.put("positionname",positionname);  
			}else{
				map.put("positionname","");  
			}
			if(workaddress!=null&&workaddress!=""){
				if(workaddress.equals("全国")){
					map.put("workaddress", "");
				}else{
					map.put("workaddress", workaddress);
				}
			}else{
				map.put("workaddress", "");
			}
			if(salary!=null&&salary!=""){
				if(salary.equals("不限")){
					map.put("salarymin","");  
					map.put("salarymax","");  
				}if(salary.equals("2k以下")){
					map.put("salarymin",0);  
					map.put("salarymax",2);  
				}if(salary.equals("2k-5k")){
					map.put("salarymin",2);  
					map.put("salarymax",5);  
				}if(salary.equals("5k-10k")){
					map.put("salarymin",5);  
					map.put("salarymax",10);  
				}if(salary.equals("10k-15k")){
					map.put("salarymin",10);  
					map.put("salarymax",15);  
				}if(salary.equals("15k-25k")){
					map.put("salarymin",15);  
					map.put("salarymax",25);  
				}if(salary.equals("25k-50k")){
					map.put("salarymin",25);  
					map.put("salarymax",50);  
				}if(salary.equals("50k以上")){
					map.put("salarymin",50);  
					map.put("salarymax",100000);  
				}
			}else{
				map.put("salarymin","");  
				map.put("salarymax","");  
			}
			if(experience!=null&&experience!=""){
				if(experience.equals("不限")){
					map.put("experience","");  
					map.put("experiencestart","");  
					map.put("experienceend","");  
				}if(experience.equals("应届毕业生")){
					map.put("experience",100); //这里传100是因为传入int的0时,mapper中会认为是空字符串,会不走and语句 
					map.put("experiencestart",0);  
					map.put("experienceend",0);    
				}if(experience.equals("1年以下")){
					map.put("experience",1);  
					map.put("experiencestart",0);  
					map.put("experienceend",1);    
				}if(experience.equals("1-3年")){
					map.put("experience",4);  
					map.put("experiencestart",1);  
					map.put("experienceend",3);   
				}if(experience.equals("3-5年")){
					map.put("experience",8);  
					map.put("experiencestart",3);  
					map.put("experienceend",5);  
				}if(experience.equals("5-10年")){
					map.put("experience",15);  
					map.put("experiencestart",5);  
					map.put("experienceend",10);  
				}if(experience.equals("10年以上")){
					map.put("experience",100010);  
					map.put("experiencestart",10);  
					map.put("experienceend",100000);  
				}
			}else{
				map.put("experience","");  
				map.put("experiencestart","");  
				map.put("experienceend","");  
			}
			if(education!=null&&education!=""){
				if(education.equals("不限")){
					map.put("education","");  
					map.put("realeducation","");  
				}if(education.equals("大专")){
					map.put("education",1);  
					map.put("realeducation",1);  
				}if(education.equals("本科")){
					map.put("education",2);  
					map.put("realeducation",2);  
				}if(education.equals("硕士")){
					map.put("education",3);  
					map.put("realeducation",3);  
				}if(education.equals("博士")){
					map.put("education",4);  
					map.put("realeducation",4);  
				}
			}else{
				map.put("education","");  
				map.put("realeducation","");  
			}
			if(positionnature!=null&&positionnature!=""){
				if(positionnature.equals("不限")){
					map.put("positionnature","");  
				}else{
					map.put("positionnature",positionnature);  
				}
			}else{
				map.put("positionnature","");  
			}
			
			//System.out.println("AAAAAAA"+positionname+" "+salary+" "+experience+" "+education+" "+positionnature+" "+page);
			map.put("start",start);  
			List<Posandcom> listPosandcom = posandcomService.selectjob(map);
			int count = posandcomService.selectjobcount(map);
			int pageall=count/9;
			if(count%9!=0){
				pageall=pageall+1;
			}
			/*for (Posandcom posandcom : listPosandcom) {
				System.out.println(posandcom.toString());
			}*/
			List<Position> listPosition =posandcomService.selectremen();
			model.addAttribute("listPosition", listPosition);
			model.addAttribute("listPosandcom", listPosandcom);
			model.addAttribute("positionname", positionname);
			model.addAttribute("workaddress", workaddress);
			model.addAttribute("salary", salary);
			model.addAttribute("experience", experience);
			model.addAttribute("education", education);
			model.addAttribute("positionnature", positionnature);
			model.addAttribute("page", page);
			model.addAttribute("pageall", pageall);
			return "tea/joblist";
		}
	}
	@RequestMapping("/joblist")
	public String joblist(HttpServletRequest request,Model model){	
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("userid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			Map map=new HashMap();  
			int start= 0;
			map.put("positionname","");  
			map.put("workaddress", "");
			map.put("salarymin","");  
			map.put("salarymax","");  
			map.put("experience","");  
			map.put("experiencestart","");  
			map.put("experienceend","");  
			map.put("education","");  
			map.put("realeducation","");  
			map.put("positionnature","");  
			map.put("start",start);  
			List<Posandcom> listPosandcom = posandcomService.selectjob(map);
			int count = posandcomService.selectjobcount(map);
			int pageall=count/9;
			if(count%9!=0){
				pageall=pageall+1;
			}
			/*for (Posandcom posandcom : listPosandcom) {
				System.out.println(posandcom.toString());
			}*/
			//System.out.println(pageall);
			List<Position> listPosition =posandcomService.selectremen();
			model.addAttribute("listPosition", listPosition);
			model.addAttribute("listPosandcom", listPosandcom);
			model.addAttribute("positionname", "");
			model.addAttribute("workaddress", "全国");
			model.addAttribute("salary", "");
			model.addAttribute("experience", "");
			model.addAttribute("education", "");
			model.addAttribute("positionnature", "");
			model.addAttribute("page", 1);
			model.addAttribute("pageall", pageall);
			return "tea/joblist";
		}
	}
	@RequestMapping("/companylist")
	public String companylist(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("userid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			Map map=new HashMap();  
			int start= 0;
			map.put("companyname","");  
			map.put("companyaddress","");  
			map.put("companysize", "");
			map.put("start",start);  
			List<Company> listcompany = posandcomService.selectcompanyall(map);
			int count = posandcomService.selectcompanycount(map);
			int pageall=count/9;
			if(count%9!=0){
				pageall=pageall+1;
			}
			/*for (Company company : listcompany) {
				System.out.println(company.toString());
			}*/
			//System.out.println("AAAAAAAAAAAA"+count);
			model.addAttribute("listcompany", listcompany);
			model.addAttribute("companyname", "");
			model.addAttribute("companyaddress", "全国");
			model.addAttribute("companysize", "不限");
			model.addAttribute("page", 1);
			model.addAttribute("pageall", pageall);
			return "tea/companylist";
		}
	}
	@RequestMapping("/selectcompanylist")
	public String selectcompanylist(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("userid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			Map map=new HashMap();  
			String companyname = request.getParameter("companyname");
			String companyaddress = request.getParameter("companyaddress");
			String companysize = request.getParameter("companysize");
			int page = Integer.parseInt(request.getParameter("page"));
			if(companyname==null || companyname==""){
				map.put("companyname","");  
			}else{
				map.put("companyname",companyname);  
			}
			if(companyaddress==""||companyaddress.equals("全国")){
				map.put("companyaddress","");  
			}else{
				map.put("companyaddress",companyaddress);  
			}
			if(companysize==""||companysize.equals("不限")){
				map.put("companysize","");  
			}else{
				map.put("companysize",companysize);  
			}		
			int start=9*(page-1);
			map.put("start",start);  
			List<Company> listcompany = posandcomService.selectcompanyall(map);
			int count = posandcomService.selectcompanycount(map);
			int pageall=count/9;
			if(count%9!=0){
				pageall=pageall+1;
			}
			/*for (Company company : listcompany) {
				System.out.println(company.toString());
			}
			System.out.println("AAAAAAAAAAAA"+count);*/
			model.addAttribute("listcompany", listcompany);
			model.addAttribute("companyname", companyname);
			model.addAttribute("companyaddress", companyaddress);
			model.addAttribute("companysize", companysize);
			model.addAttribute("page", page);
			model.addAttribute("pageall", pageall);
			return "tea/companylist";
		}
	}
	@RequestMapping("/collections")
	public String collections(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("userid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			int userid = Integer.parseInt(session.getAttribute("userid").toString());
			List<Posandcom> listPosandcom =posandcomService.selectcollections(userid);
			System.out.println(listPosandcom.toString());
			model.addAttribute("listPosandcom", listPosandcom);
			model.addAttribute("userid", userid);
			return "tea/collections";
		}
	}
	
	@RequestMapping("/delivery")
	public String delivery(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("userid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			int userid = Integer.parseInt(session.getAttribute("userid").toString());
			Map map=new HashMap();  
			map.put("userid",userid);  
			map.put("status",null);
			List<Posandcomanddel> listPosandcomanddel = userDeliveryService.delivery(map);
			
			Map newmap=new HashMap();  
			Jianli jianli = jianliService.jianli(userid);
			
			String positionname = jianli.getHopepositionname();
			String education = jianli.getEducation();
			String experience = jianli.getExperience();
			String positionnature = jianli.getPositionnature();
			String workaddress = jianli.getWorkaddress();
			int salarymin = jianli.getSalarymin();
			int salarymax = jianli.getSalarymax();
				
			newmap.put("userid",userid);  
			newmap.put("positionname",positionname);  
			newmap.put("education",education);  
			newmap.put("experience",experience);  
			newmap.put("positionnature",positionnature);  
			newmap.put("workaddress",workaddress);  
			newmap.put("salarymin",salarymin);  
			newmap.put("salarymax",salarymax);  

			List<Posandcom> listPosandcom = posandcomService.mlistjobright(newmap);
			
			model.addAttribute("listPosandcom", listPosandcom);
			model.addAttribute("listPosandcomanddel", listPosandcomanddel);
			//System.out.println(listPosandcomanddel.toString());
			return "tea/delivery";
		}
	}
	@RequestMapping("/deliverysuccess")
	public String deliverysuccess(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("userid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			int userid = Integer.parseInt(session.getAttribute("userid").toString());
			Map map=new HashMap();  
			map.put("userid",userid);  
			map.put("status",0);
			List<Posandcomanddel> listPosandcomanddel = userDeliveryService.delivery(map);
			Map map1=new HashMap();  
			map1.put("userid",userid);  
			map1.put("status",4);
			List<Posandcomanddel> newlistPosandcomanddel = userDeliveryService.delivery(map1);
			listPosandcomanddel.addAll(newlistPosandcomanddel);
			Map newmap=new HashMap();  
			Jianli jianli = jianliService.jianli(userid);
			
			String positionname = jianli.getHopepositionname();
			String education = jianli.getEducation();
			String experience = jianli.getExperience();
			String positionnature = jianli.getPositionnature();
			String workaddress = jianli.getWorkaddress();
			int salarymin = jianli.getSalarymin();
			int salarymax = jianli.getSalarymax();
				
			newmap.put("userid",userid);  
			newmap.put("positionname",positionname);  
			newmap.put("education",education);  
			newmap.put("experience",experience);  
			newmap.put("positionnature",positionnature);  
			newmap.put("workaddress",workaddress);  
			newmap.put("salarymin",salarymin);  
			newmap.put("salarymax",salarymax);  

			List<Posandcom> listPosandcom = posandcomService.mlistjobright(newmap);
			
			model.addAttribute("listPosandcom", listPosandcom);
			model.addAttribute("listPosandcomanddel", listPosandcomanddel);
			//System.out.println(listPosandcomanddel.toString());
			return "tea/deliverysuccess";
		}
	}
	@RequestMapping("/deliveryinvalid")
	public String deliveryinvalid(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("userid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			int userid = Integer.parseInt(session.getAttribute("userid").toString());
			Map map=new HashMap();  
			map.put("userid",userid);  
			map.put("status",5);
			List<Posandcomanddel> listPosandcomanddel = userDeliveryService.delivery(map);
			Map newmap=new HashMap();  
			Jianli jianli = jianliService.jianli(userid);
			
			String positionname = jianli.getHopepositionname();
			String education = jianli.getEducation();
			String experience = jianli.getExperience();
			String positionnature = jianli.getPositionnature();
			String workaddress = jianli.getWorkaddress();
			int salarymin = jianli.getSalarymin();
			int salarymax = jianli.getSalarymax();
				
			newmap.put("userid",userid);  
			newmap.put("positionname",positionname);  
			newmap.put("education",education);  
			newmap.put("experience",experience);  
			newmap.put("positionnature",positionnature);  
			newmap.put("workaddress",workaddress);  
			newmap.put("salarymin",salarymin);  
			newmap.put("salarymax",salarymax);  

			List<Posandcom> listPosandcom = posandcomService.mlistjobright(newmap);
			
			model.addAttribute("listPosandcom", listPosandcom);
			model.addAttribute("listPosandcomanddel", listPosandcomanddel);
			//System.out.println(listPosandcomanddel.toString());
			return "tea/deliveryinvalid";
		}
	}
	@RequestMapping("/deliverypass")
	public String deliverypass(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("userid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			int userid = Integer.parseInt(session.getAttribute("userid").toString());
			Map map=new HashMap();  
			map.put("userid",userid);  
			map.put("status",1);
			List<Posandcomanddel> listPosandcomanddel = userDeliveryService.delivery(map);
			Map newmap=new HashMap();  
			Jianli jianli = jianliService.jianli(userid);
			
			String positionname = jianli.getHopepositionname();
			String education = jianli.getEducation();
			String experience = jianli.getExperience();
			String positionnature = jianli.getPositionnature();
			String workaddress = jianli.getWorkaddress();
			int salarymin = jianli.getSalarymin();
			int salarymax = jianli.getSalarymax();
				
			newmap.put("userid",userid);  
			newmap.put("positionname",positionname);  
			newmap.put("education",education);  
			newmap.put("experience",experience);  
			newmap.put("positionnature",positionnature);  
			newmap.put("workaddress",workaddress);  
			newmap.put("salarymin",salarymin);  
			newmap.put("salarymax",salarymax);  

			List<Posandcom> listPosandcom = posandcomService.mlistjobright(newmap);
			
			model.addAttribute("listPosandcom", listPosandcom);
			model.addAttribute("listPosandcomanddel", listPosandcomanddel);
			//System.out.println(listPosandcomanddel.toString());
			return "tea/deliverypass";
		}
	}
	@RequestMapping("/deliveryinterview")
	public String deliveryinterview(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("userid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			int userid = Integer.parseInt(session.getAttribute("userid").toString());
			Map map=new HashMap();  
			map.put("userid",userid);  
			map.put("status",2);
			List<Posandcomanddel> listPosandcomanddel = userDeliveryService.delivery(map);
			Map newmap=new HashMap();  
			Jianli jianli = jianliService.jianli(userid);
			
			String positionname = jianli.getHopepositionname();
			String education = jianli.getEducation();
			String experience = jianli.getExperience();
			String positionnature = jianli.getPositionnature();
			String workaddress = jianli.getWorkaddress();
			int salarymin = jianli.getSalarymin();
			int salarymax = jianli.getSalarymax();
				
			newmap.put("userid",userid);  
			newmap.put("positionname",positionname);  
			newmap.put("education",education);  
			newmap.put("experience",experience);  
			newmap.put("positionnature",positionnature);  
			newmap.put("workaddress",workaddress);  
			newmap.put("salarymin",salarymin);  
			newmap.put("salarymax",salarymax);  

			List<Posandcom> listPosandcom = posandcomService.mlistjobright(newmap);
			
			model.addAttribute("listPosandcom", listPosandcom);
			model.addAttribute("listPosandcomanddel", listPosandcomanddel);
			//System.out.println(listPosandcomanddel.toString());
			return "tea/deliveryinterview";
		}
	}
	@RequestMapping("/deliveryno")
	public String deliveryno(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("userid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			int userid = Integer.parseInt(session.getAttribute("userid").toString());
			Map map=new HashMap();  
			map.put("userid",userid);  
			map.put("status",3);
			List<Posandcomanddel> listPosandcomanddel = userDeliveryService.delivery(map);
			Map newmap=new HashMap();  
			Jianli jianli = jianliService.jianli(userid);
			
			String positionname = jianli.getHopepositionname();
			String education = jianli.getEducation();
			String experience = jianli.getExperience();
			String positionnature = jianli.getPositionnature();
			String workaddress = jianli.getWorkaddress();
			int salarymin = jianli.getSalarymin();
			int salarymax = jianli.getSalarymax();
				
			newmap.put("userid",userid);  
			newmap.put("positionname",positionname);  
			newmap.put("education",education);  
			newmap.put("experience",experience);  
			newmap.put("positionnature",positionnature);  
			newmap.put("workaddress",workaddress);  
			newmap.put("salarymin",salarymin);  
			newmap.put("salarymax",salarymax);  

			List<Posandcom> listPosandcom = posandcomService.mlistjobright(newmap);
			
			model.addAttribute("listPosandcom", listPosandcom);
			model.addAttribute("listPosandcomanddel", listPosandcomanddel);
			//System.out.println(listPosandcomanddel.toString());
			return "tea/deliveryno";
		}
	}
	
	@RequestMapping("/deliverypreview")
	public String deliverypreview(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("userid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			int deliveryid = Integer.parseInt(request.getParameter("deliveryid"));
			/*int userid = Integer.parseInt(session.getAttribute("userid").toString());
			Map map=new HashMap();  
			map.put("userid",userid);  
			map.put("status",3);
			List<Posandcomanddel> listPosandcomanddel = userDeliveryService.delivery(map);
			model.addAttribute("listPosandcomanddel", listPosandcomanddel);*/
			//System.out.println(listPosandcomanddel.toString());
			Delivery delivery = userDeliveryService.deliverypreview(deliveryid);
			model.addAttribute("delivery", delivery);
			return "tea/deliverypreview";
		}
	}
	
	@RequestMapping("/mlist")
	public String mlist(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("userid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			Map map=new HashMap();  
			int  start;
			int userid=Integer.parseInt(session.getAttribute("userid").toString());
			Jianli jianli = jianliService.jianli(userid);
			
			String positionname = jianli.getHopepositionname();
			String education = jianli.getEducation();
			String experience = jianli.getExperience();
			String positionnature = jianli.getPositionnature();
			String workaddress = jianli.getWorkaddress();
			int salarymin = jianli.getSalarymin();
			int salarymax = jianli.getSalarymax();
			int page = Integer.parseInt(request.getParameter("page"));
			start = 9*(page-1);
			
			map.put("userid",userid);  
			map.put("positionname",positionname);  
			map.put("education",education);  
			map.put("experience",experience);  
			map.put("positionnature",positionnature);  
			map.put("workaddress",workaddress);  
			map.put("salarymin",salarymin);  
			map.put("salarymax",salarymax);  
			map.put("start",start);  

			List<Posandcom> listPosandcom = posandcomService.mlistjob(map);
			//List<Posandcom> listPosandcom = posandcomService.selectjob(map);
			int count = posandcomService.mlistjobcount(map);
			//int count = posandcomService.selectjobcount(map);
			int pageall=count/9;
			if(count%9!=0){
				pageall=pageall+1;
			}
			/*for (Posandcom posandcom : listPosandcom) {
				System.out.println("AAAAAAAAAAAA"+posandcom.toString());
			}
			System.out.println("BBBBBBBBBB"+count);*/
			model.addAttribute("listPosandcom", listPosandcom);
			model.addAttribute("page", page);
			model.addAttribute("pageall", pageall);
			return "tea/mlist";
		}
	}
	@RequestMapping("/certification")
	public String certification(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("userid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			int userid=Integer.parseInt(session.getAttribute("userid").toString());
			Certification certification = userCertificationService.certification(userid);
			if(certification==null){
				model.addAttribute("certification", certification);
				return "tea/uploadcertification";
			}else{
				if(certification.getStatus()==0){
					return "tea/certificationsuccess";
				}else{
					model.addAttribute("certification", certification);
					return "tea/uploadcertification";
				}
			}
			
		}
	}
	@RequestMapping("/uploadcertification")
	public String uploadcertification(HttpServletRequest request,Model model,MultipartFile certificateimg) throws IOException{
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("userid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			Certification certification = new Certification();
			int userid=Integer.parseInt(session.getAttribute("userid").toString());
			String realname = request.getParameter("realname");
			String idcard = request.getParameter("idcard");
			String certificatename = request.getParameter("certificatename");
			String certificateno = request.getParameter("certificateno");
			Certification certification1 = userCertificationService.certification(userid);
			if(certification1!=null){
				File f=new File("E:\\image\\" + certification1.getCertificateimg()); 
				if(f.exists()){
					deleteFile(f.getCanonicalPath());
				}
			}
			//1. 获取图片完整名称
			String fileStr = certificateimg.getOriginalFilename();
			//2. 使用随机生成的字符串+源图片扩展名组成新的图片名称,防止图片重名
			String newfileName = UUID.randomUUID().toString() +  fileStr.substring(fileStr.lastIndexOf("."));
			//3. 将图片保存到硬盘
			certificateimg.transferTo(new File("E:\\image\\" + newfileName));
			//4.将图片名称等信息保存到数据库
			certification.setUserid(userid);
			certification.setRealname(realname);
			certification.setIdcard(idcard);
			certification.setCertificatename(certificatename);
			certification.setCertificateno(certificateno);
			certification.setCertificateimg(newfileName);
			certification.setStatus(0);
			certification.setReason(null);
			certification.setUpdatetime(getnow());
			//System.out.println("AAAAAAAAAAAAAAAAA"+certification.toString());
			//System.out.println("AAAAAAAAAAAAAAAAABBBBBBBBBBBBBBB");
			
			if(certification1==null){
				userCertificationService.addcertification(certification);
			}else{
				userCertificationService.updatecertification(certification);
			}
			
			//System.out.println(realname+" "+idcard+" "+certificatename+" "+certificateno+" "+certificateimg);
			/*int userid = Integer.parseInt(session.getAttribute("userid").toString());
			Map map=new HashMap();  
			map.put("userid",userid);  
			map.put("status",3);
			List<Posandcomanddel> listPosandcomanddel = userDeliveryService.delivery(map);
			model.addAttribute("listPosandcomanddel", listPosandcomanddel);*/
			//System.out.println(listPosandcomanddel.toString());
			//Delivery delivery = userDeliveryService.deliverypreview(deliveryid);
			//model.addAttribute("delivery", delivery);
			return "redirect:certification.action";
		}
	}
	@RequestMapping("/userupdatepassword")
	public String userupdatepassword(HttpServletRequest request,Model model) throws IllegalStateException, IOException{		
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("userid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			return "tea/updatepassword";
		}
	}
	@RequestMapping("/uupdatepassword")
	@ResponseBody
	public String uupdatepassword(HttpServletRequest request,Model model) {
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("userid");
		if(obj==null){
			return "0";
		}else{
			int userid = Integer.parseInt(session.getAttribute("userid").toString());
			String oldpassword = request.getParameter("oldPassword").toString();
			String newpassword = request.getParameter("newPassword").toString();
			Map map = new HashMap();
			map.put("userid", userid);
			map.put("password", oldpassword);
			User user = passwordService.selectuser1(map);
			if(user==null){
				return "1";
			}else{
				Map newmap = new HashMap();
				newmap.put("userid", userid);
				newmap.put("password", newpassword);
				passwordService.updatepassword(newmap);
				return "2";
			}
			
		}
	}
	//进行日期格式转换
	public  Date getnow(){
		Date date=new java.util.Date();
		java.sql.Date sqlDate=new java.sql.Date(date.getTime());
		return sqlDate;
	}
	//文件删除
	public @ResponseBody static  boolean deleteFile(String sPath) {  
		boolean flag = false;  
		File file = new File(sPath);  
		// 路径为文件且不为空则进行删除  
		if (file.isFile() && file.exists()) {  
			  file.delete();  
			  flag = true;  
		}  
		return flag;  
	}
}
