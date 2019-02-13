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
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.druid.stat.TableStat.Mode;
import com.shipin.pojo.Company;
import com.shipin.pojo.Jianli;
import com.shipin.pojo.Position;
import com.shipin.service.CompanyhomeService;

import cn.itcast.utils.Page;

import com.shipin.service.CompanyDeliveryService;
import com.shipin.service.CompanyPositionService;

@Controller
public class CompanylianhePositionController {

	@Autowired
	private CompanyPositionService companypositionService;
	@Autowired
	private CompanyhomeService companyhomeService;
	@Autowired
	private CompanyDeliveryService companyDeliveryService;
	
	@RequestMapping("/lianhecreatejob")
	public String lianhecreatejob(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("companyid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			int companyid = Integer.parseInt(session.getAttribute("companyid").toString());
			//System.out.println(companyid);
			Company company = companyhomeService.companyAll(companyid);
			if(company.getCompanyname()==null||company.getCompanytype()==null||company.getCompanyceoname()==null||company.getCompanysize()==null){
				model.addAttribute("info", 0);
			}
			else{
				model.addAttribute("info", 1);
			}
			return "com/lianhecreatejob";
		}
	}
	@RequestMapping("/createlianheposition")
	public String createlianheposition(Position position,HttpServletRequest request){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("companyid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			//System.out.println("AAAAAAAAAAAAAAAAAAAAA"+position.toString());
			int companyid = Integer.parseInt(session.getAttribute("companyid").toString());
			position.setStatus(1);
			position.setCompanyid(companyid);
			if(position.getEducation().equals("不限")){
				position.setEducation("0");
			}else if(position.getEducation().equals("大专")){
				position.setEducation("1");
			}else if(position.getEducation().equals("本科")){
				position.setEducation("2");
			}else if(position.getEducation().equals("硕士")){
				position.setEducation("3");
			}else{
				position.setEducation("4");
			}
			if(position.getExperience().equals("不限")){
				position.setExperience("-1");
			}else if(position.getExperience().equals("应届毕业生")){
				position.setExperience("0");
			}else if(position.getExperience().equals("1年")){
				position.setExperience("1");
			}else if(position.getExperience().equals("2年")){
				position.setExperience("2");
			}else if(position.getExperience().equals("3年")){
				position.setExperience("3");
			}else if(position.getExperience().equals("4年")){
				position.setExperience("4");
			}else if(position.getExperience().equals("5年")){
				position.setExperience("5");
			}else if(position.getExperience().equals("6年")){
				position.setExperience("6");
			}else if(position.getExperience().equals("7年")){
				position.setExperience("7");
			}else if(position.getExperience().equals("8年")){
				position.setExperience("8");
			}else if(position.getExperience().equals("9年")){
				position.setExperience("9");
			}else if(position.getExperience().equals("10年")){
				position.setExperience("10");
			}else{
				position.setExperience("11");
			}
			//position.setPositiondetail(position.getPositiondetail().replace("\r", "</br>"));
			position.setNumber(0);
			Date  date =new Date();
			position.setReleasetime(getnow());
			position.setNumber(0);
			//System.out.println(position.toString());
			companypositionService.add_lianhePosition(position);
			return "redirect:lianhecreatejob.action";
		}
	}
	
	@RequestMapping("/ylianhepositions")
	public String ylianhepositions(Model model,HttpServletRequest request){
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
			map.put("status","1");  
			List<Position> listPosition = companypositionService.select_YNlianheposition(map);
			//System.out.println(listPosition.toString());
			int count = companypositionService.lianhecount(map);
			
			Page<Position> page = new Page<Position>();
			page.setTotal(count);		//数据总数
			page.setSize(6);	//每页显示条数
			page.setPage(yema); //当前页数
			page.setRows(listPosition);	//数据列表
			
			model.addAttribute("page", page);
		
			model.addAttribute("listPosition", listPosition);
			model.addAttribute("count", count);
			return "com/ylianhepositions";
		}
	}
	@RequestMapping("/nlianhepositions")
	public String nlianhepositions(Model model,HttpServletRequest request){
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
			map.put("status","0");  
			List<Position> listPosition = companypositionService.select_YNlianheposition(map);
			//System.out.println(listPosition.toString());
			int count = companypositionService.lianhecount(map);
			Page<Position> page = new Page<Position>();
			page.setTotal(count);		//数据总数
			page.setSize(6);	//每页显示条数
			page.setPage(yema); //当前页数
			page.setRows(listPosition);	//数据列表
			
			model.addAttribute("page", page);
			model.addAttribute("listPosition", listPosition);
			model.addAttribute("count", count);
			return "com/nlianhepositions";
		}
	}
	
	@RequestMapping("/offlinelianheposition")
	public String offlineposition(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("companyid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
			String positionid = request.getParameter("positionid").toString();
			//System.out.println(positionid);
			Map<String,String> map=new HashMap<String,String>();  
			map.put("positionid",positionid);  
			map.put("status","0");  
			companypositionService.offlinelianheposition(map);
			return "redirect:ylianhepositions.action";
		}
	}
	
	
	@RequestMapping("/klianhepositions")
	public String klianhepositions(HttpServletRequest request,Model model){
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
			map.put("status","1");  
			map.put("number","1");  
			List<Position> listPosition = companypositionService.select_klianheposition(map);
			//System.out.println(listPosition.toString());
			int count = companypositionService.klianhecount(map);
			
			Page<Position> page = new Page<Position>();
			page.setTotal(count);		//数据总数
			page.setSize(6);	//每页显示条数
			page.setPage(yema); //当前页数
			page.setRows(listPosition);	//数据列表
			
			model.addAttribute("page", page);
		
			model.addAttribute("listPosition", listPosition);
			model.addAttribute("count", count);
			return "com/klianhepositions";
		}
	}
	
	@RequestMapping("/lianhepositionjianli")
	public String lianhepositionjianli(HttpServletRequest request,Model model){
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
			int positionid = Integer.parseInt(request.getParameter("positionid"));
			Position position = companypositionService.selectposition(positionid);
			if(object == null){		
				map.put("start",start);  
			}else{
				start = ((Integer.parseInt(request.getParameter("page").toString())-1)*6);
				map.put("start",start);  
				yema = Integer.parseInt(request.getParameter("page").toString());
			}
			map.put("status","1");  
			map.put("workaddress",position.getWorkaddress());  
			map.put("education",position.getEducation());
			map.put("experience",position.getExperience());
			map.put("positionnature",position.getPositionnature());
			map.put("hopepositionname",position.getPositionname());
			map.put("salarymin",position.getSalarymin());
			map.put("salarymax",position.getSalarymax());
			List<Jianli> listJianli = companypositionService.selectjianli(map);
			//System.out.println(listPosition.toString());
			for (Jianli jianli : listJianli) {
				System.out.println("AAAAAAAA"+jianli.toString());
			}
			int count = companypositionService.kjianlicount(map);
			
			Page<Jianli> page = new Page<Jianli>();
			page.setTotal(count);		//数据总数
			page.setSize(6);	//每页显示条数
			page.setPage(yema); //当前页数
			page.setRows(listJianli);	//数据列表
			
			model.addAttribute("position", position);
			model.addAttribute("page", page);
			model.addAttribute("listJianli", listJianli);
			model.addAttribute("count", count);
			return "com/lianhepositionjianli";
		}
	}
	@RequestMapping("/ydeletelianheposition")
	public String ydeleteposition(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("companyid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			String positionid = request.getParameter("positionid").toString();
			String status = request.getParameter("status").toString();
			//System.out.println(positionid);
			Map<String,String> map=new HashMap<String,String>();  
			map.put("positionid",positionid);  
			map.put("status",status);  
			companypositionService.deletelianheposition(map);
			return "redirect:ylianhepositions.action";
		}
	}
	
	@RequestMapping("/ndeletelianheposition")
	public String ndeleteposition(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("companyid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			String positionid = request.getParameter("positionid").toString();
			String status = request.getParameter("status").toString();
			//System.out.println(positionid);
			Map<String,String> map=new HashMap<String,String>();  
			map.put("positionid",positionid);  
			map.put("status",status);  
			companypositionService.deletelianheposition(map);
			return "redirect:nlianhepositions.action";
		}
	}
	
	@RequestMapping("/getlianhepositiondetail")
	public String getpositiondetail(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("companyid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			String positionid = request.getParameter("positionid").toString();
			String status = request.getParameter("status").toString();
			Map<String,String> map=new HashMap<String,String>();  
			map.put("positionid",positionid);  
			map.put("status",status);  
			Position position = companypositionService.getpositiondetail(map);
			position.setPositiondetail(position.getPositiondetail().replace("</br>", "\r"));
			model.addAttribute("position", position);
			return "com/editjob";
		}
	}
	
	@RequestMapping("/editlianheposition")
	public String editposition(Position position,HttpServletRequest request){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("companyid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			position.setReleasetime(getnow());
			int status = position.getStatus();
			if(position.getEducation().equals("不限")){
				position.setEducation("0");
			}else if(position.getEducation().equals("大专")){
				position.setEducation("1");
			}else if(position.getEducation().equals("本科")){
				position.setEducation("2");
			}else if(position.getEducation().equals("硕士")){
				position.setEducation("3");
			}else{
				position.setEducation("4");
			}
			if(position.getExperience().equals("不限")){
				position.setExperience("-1");
			}else if(position.getExperience().equals("应届毕业生")){
				position.setExperience("0");
			}else if(position.getExperience().equals("1年")){
				position.setExperience("1");
			}else if(position.getExperience().equals("2年")){
				position.setExperience("2");
			}else if(position.getExperience().equals("3年")){
				position.setExperience("3");
			}else if(position.getExperience().equals("4年")){
				position.setExperience("4");
			}else if(position.getExperience().equals("5年")){
				position.setExperience("5");
			}else if(position.getExperience().equals("6年")){
				position.setExperience("6");
			}else if(position.getExperience().equals("7年")){
				position.setExperience("7");
			}else if(position.getExperience().equals("8年")){
				position.setExperience("8");
			}else if(position.getExperience().equals("9年")){
				position.setExperience("9");
			}else if(position.getExperience().equals("10年")){
				position.setExperience("10");
			}else{
				position.setExperience("11");
			}
			position.setPositiondetail(position.getPositiondetail().replace("\r", "</br>"));
			companypositionService.edit_Position(position);
			if(status==1){
				return "redirect:ypositions.action";
			}
			else{
				return "redirect:npositions.action";
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
