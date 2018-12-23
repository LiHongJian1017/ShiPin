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

import com.shipin.pojo.Company;
import com.shipin.pojo.Position;
import com.shipin.service.CompanyhomeService;

import cn.itcast.utils.Page;

import com.shipin.service.CompanyPositionService;

@Controller
public class CompanyPositionController {

	@Autowired
	private CompanyPositionService companypositionService;
	
	@RequestMapping("/createjob")
	public String createjob(HttpServletRequest request){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("companyid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			return "com/createjob";
		}
	}
	@RequestMapping("/createposition")
	public String createposition(Position position,HttpServletRequest request){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("companyid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
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
			position.setPositiondetail(position.getPositiondetail().replace("\r", "</br>"));
			Date  date =new Date();
			position.setReleasetime(getnow());
			//System.out.println(position.toString());
			companypositionService.add_Position(position);
			return "com/createjob";
		}
	}
	
	@RequestMapping("/ypositions")
	public String ypositions(Model model,HttpServletRequest request){
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
			List<Position> listPosition = companypositionService.select_YNposition(map);
			//System.out.println(listPosition.toString());
			int count = companypositionService.count(map);
			
			Page<Position> page = new Page<Position>();
			page.setTotal(count);		//数据总数
			page.setSize(6);	//每页显示条数
			page.setPage(yema); //当前页数
			page.setRows(listPosition);	//数据列表
			
			model.addAttribute("page", page);
		
			model.addAttribute("listPosition", listPosition);
			model.addAttribute("count", count);
			return "com/ypositions";
		}
	}
	@RequestMapping("/npositions")
	public String npositions(Model model,HttpServletRequest request){
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
			List<Position> listPosition = companypositionService.select_YNposition(map);
			//System.out.println(listPosition.toString());
			int count = companypositionService.count(map);
			Page<Position> page = new Page<Position>();
			page.setTotal(count);		//数据总数
			page.setSize(6);	//每页显示条数
			page.setPage(yema); //当前页数
			page.setRows(listPosition);	//数据列表
			
			model.addAttribute("page", page);
			model.addAttribute("listPosition", listPosition);
			model.addAttribute("count", count);
			return "com/npositions";
		}
	}
	
	@RequestMapping("/offlineposition")
	public String offlineposition(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("companyid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			String positionid = request.getParameter("positionid").toString();
			//System.out.println(positionid);
			Map<String,String> map=new HashMap<String,String>();  
			map.put("positionid",positionid);  
			map.put("status","0");  
			companypositionService.offlineposition(map);
			return "redirect:ypositions.action";
		}
	}
	
	@RequestMapping("/ydeleteposition")
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
			companypositionService.deleteposition(map);
			return "redirect:ypositions.action";
		}
	}
	
	@RequestMapping("/ndeleteposition")
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
			companypositionService.deleteposition(map);
			return "redirect:npositions.action";
		}
	}
	
	@RequestMapping("/getpositiondetail")
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
	
	@RequestMapping("/editposition")
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
