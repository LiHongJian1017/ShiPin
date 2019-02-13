package com.shipin.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.shipin.pojo.Certification;
import com.shipin.pojo.Chart;
import com.shipin.pojo.Position;
import com.shipin.pojo.User;
import com.shipin.service.AssessorService;
import com.shipin.service.ReviewService;




@Controller
public class AdminController {
	
	@Autowired
	private AssessorService assessorService;
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping("/userlist")
	public String Assessor(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("adminuserid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			int start;
			int count=0;
			int page = Integer.parseInt(request.getParameter("page"));
			int status = Integer.parseInt(request.getParameter("status"));
			//System.out.println("BBBBBBBBBBB"+page+" "+status);
			start = 9*(page-1);
			Map map=new HashMap();  
			map.put("start",start);  
			map.put("status",status);  
			map.put("type",4);  
			List<User> listAssessor = assessorService.selectAssessor(map);
			count = assessorService.selectCountAssessor(map);
			int pageall=count/9;
			if(count%9!=0){
				pageall=pageall+1;
			}
			//System.out.println("AAAAAAAAAAAAAAA"+count+" "+pageall);
			//System.out.println(listAssessor.toString());
			model.addAttribute("listAssessor", listAssessor);
			model.addAttribute("pageall", pageall);
			model.addAttribute("page", page);
			return "admin/userlist";
		}
	}
	@RequestMapping("/chart")
	public String chart(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("adminuserid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			return "admin/chart";
		}
	}
	
	@RequestMapping("/userdetail")
	@ResponseBody
	public User userdetail(HttpServletRequest request,User user){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("adminuserid");
		if(obj==null){
			return null;
		}else{
			int userid = user.getUserid();
			Map map=new HashMap();  
			map.put("userid", userid);
			User user1 =assessorService.userdetail(map);
			return user1;
		}
	}
	
	@RequestMapping("/updatestatus")
	@ResponseBody
	public String updatestatus(HttpServletRequest request,User user){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("adminuserid");
		if(obj==null){
			return "0";
		}else{
			int userid = user.getUserid();
			int status = user.getStatus();
			Map map=new HashMap();  
			map.put("userid", userid);
			map.put("status", status);
			assessorService.updatestatus(map);
			return "1";
		}
	}
	@RequestMapping("/update")
	@ResponseBody
	public String update(HttpServletRequest request,User user){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("adminuserid");
		if(obj==null){
			return "0";
		}else{
			int userid = user.getUserid();
			String name = user.getName();
			String password = user.getPassword();
			
			Map map=new HashMap();  
			map.put("userid", userid);
			map.put("name", name);
			map.put("password", password);
			assessorService.update(map);
			return "1";
		}
	}
	@RequestMapping("/deleteassessor")
	@ResponseBody
	public String deleteassessor(HttpServletRequest request,User user){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("adminuserid");
		if(obj==null){
			return "0";
		}else{
			int userid = user.getUserid();
			Map map=new HashMap();  
			map.put("userid", userid);
			assessorService.deleteassessor(map);
			return "1";
		}
	}
	@RequestMapping("/addassessor")
	@ResponseBody
	public String addassessor(HttpServletRequest request,User user){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("adminuserid");
		if(obj==null){
			return "0";
		}else{
			String username = user.getUsername();
			String password = user.getPassword();
			String name = user.getUsername().substring(0, user.getUsername().lastIndexOf("@"));
			String type = "4";
			int status = 1;
			Map map=new HashMap();  
			map.put("username", username);
			User user2 = assessorService.checkassessor(map);
			if(user2!=null){
				return "1";
			}else{
				Map newmap=new HashMap(); 
				newmap.put("username", username);
				newmap.put("name", name);
				newmap.put("password", password);
				newmap.put("type", type);
				newmap.put("status", status);
				assessorService.addassessor(newmap);
				return "2";
			}
		}
	}
	@RequestMapping("/adminaccount")
	public String adminaccount(HttpServletRequest request,User user){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("adminuserid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			
			return "admin/account";
		}
	}
	@RequestMapping("/updateadminpassword")
	@ResponseBody
	public String updatepassword(HttpServletRequest request,Model model,User user){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("adminuserid");
		if(obj==null){
			return "0";
		}else{
			int userid = Integer.parseInt(session.getAttribute("adminuserid").toString());
			String password = user.getPassword();
			//System.out.println("AAAAAAAAAAAAAAAAAAAAAAAAAAAA"+userid+" "+password);
			Map map=new HashMap();  
			map.put("userid", userid);
			map.put("password", password);
			reviewService.updatepassword(map);
			return "1";
		}
	}
	
	@RequestMapping("/getchart")
    @ResponseBody
    public String getOnevideo(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("adminuserid");
		if(obj==null){
			return "0";
		}else{
			String diqu1 = request.getParameter("diqu1");
			String diqu2 = request.getParameter("diqu2");
			String xueli1 = request.getParameter("xueli1");
			String xueli2 = request.getParameter("xueli2");
			String jingyan1 = request.getParameter("jingyan1");
			String jingyan2 = request.getParameter("jingyan2");
			//System.out.println("AAAAAAAAA"+diqu1+" "+diqu2+" "+xueli1+" "+xueli2+" "+jingyan1+" "+jingyan2);
			Map map1 = new HashMap<>();
			Map map2 = new HashMap<>();
			String name1 ="";
			String name2 ="";
			if(!diqu1.equals("选择地区")){
				map1.put("workaddress", diqu1);
				map2.put("workaddress", diqu2);
				name1=name1+diqu1+"  ";
				name2=name2+diqu2+"  ";
			}else{
				map1.put("workaddress", null);
				map2.put("workaddress", null);
			}
			if(!xueli1.equals("选择学历")){
				map1.put("education", xueli1);
				map2.put("education", xueli2);
				if(xueli1.equals("0")){
					name1=name1+"学历不限  ";
				}if(xueli1.equals("1")){
					name1=name1+"专科  ";
				}if(xueli1.equals("2")){
					name1=name1+"本科  ";
				}if(xueli1.equals("3")){
					name1=name1+"硕士  ";
				}if(xueli1.equals("4")){
					name1=name1+"博士  ";
				}
				if(xueli2.equals("0")){
					name2=name2+"学历不限  ";
				}if(xueli2.equals("1")){
					name2=name2+"专科  ";
				}if(xueli2.equals("2")){
					name2=name2+"本科  ";
				}if(xueli2.equals("3")){
					name2=name2+"硕士  ";
				}if(xueli2.equals("4")){
					name2=name2+"博士  ";
				}
			}else{
				map1.put("education", null);
				map2.put("education", null);
			}
			if(!jingyan1.equals("选择经验")){
				map1.put("experience", jingyan1);
				map2.put("experience", jingyan2);
				if(jingyan1.equals("-1")){
					name1=name1+"经验不限  ";
				}if(jingyan1.equals("0")){
					name1=name1+"应届毕业生  ";
				}if(jingyan1.equals("1")){
					name1=name1+"至少1年  ";
				}if(jingyan1.equals("2")){
					name1=name1+"至少2年  ";
				}if(jingyan1.equals("3")){
					name1=name1+"至少3年  ";
				}if(jingyan1.equals("4")){
					name1=name1+"至少4年  ";
				}if(jingyan1.equals("5")){
					name1=name1+"至少5年  ";
				}if(jingyan1.equals("6")){
					name1=name1+"至少6年  ";
				}if(jingyan1.equals("7")){
					name1=name1+"至少7年  ";
				}if(jingyan1.equals("8")){
					name1=name1+"至少8年  ";
				}if(jingyan1.equals("9")){
					name1=name1+"至少9年  ";
				}if(jingyan1.equals("10")){
					name1=name1+"至少10年  ";
				}if(jingyan1.equals("11")){
					name1=name1+"10年以上  ";
				}
				if(jingyan2.equals("-2")){
					name2=name2+"经验不限  ";
				}if(jingyan2.equals("0")){
					name2=name2+"应届毕业生  ";
				}if(jingyan2.equals("1")){
					name2=name2+"至少1年  ";
				}if(jingyan2.equals("2")){
					name2=name2+"至少2年  ";
				}if(jingyan2.equals("3")){
					name2=name2+"至少3年  ";
				}if(jingyan2.equals("4")){
					name2=name2+"至少4年  ";
				}if(jingyan2.equals("5")){
					name2=name2+"至少5年  ";
				}if(jingyan2.equals("6")){
					name2=name2+"至少6年  ";
				}if(jingyan2.equals("7")){
					name2=name2+"至少7年  ";
				}if(jingyan2.equals("8")){
					name2=name2+"至少8年  ";
				}if(jingyan2.equals("9")){
					name2=name2+"至少9年  ";
				}if(jingyan2.equals("10")){
					name2=name2+"至少10年  ";
				}if(jingyan2.equals("11")){
					name2=name2+"10年以上  ";
				}
			}else{
				map1.put("experience", null);
				map2.put("experience", null);
			}
			Double value1=reviewService.getchart(map1);
			Double value2=reviewService.getchart(map2);
			Chart chart1 = new Chart();
			Chart chart2 = new Chart();
			chart1.setName(name1);
			chart1.setValue(value1);
			chart2.setName(name2);
			chart2.setValue(value2);
			List<Chart> charts =new ArrayList();
			charts.add(chart1);
			charts.add(chart2);
			return JSONObject.toJSONString(charts);
		}
        
        
    }
}
