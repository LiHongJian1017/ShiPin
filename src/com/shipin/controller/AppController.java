package com.shipin.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.ObjectUtils.Null;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.shipin.pojo.Company;
import com.shipin.pojo.Delivery;
import com.shipin.pojo.Jianli;
import com.shipin.pojo.Posandcom;
import com.shipin.pojo.Poscom;
import com.shipin.pojo.Position;
import com.shipin.pojo.User;
import com.shipin.service.AppService;
import com.shipin.service.CompanyPositionService;
import com.shipin.service.JianliService;
import com.shipin.service.LoginAndRegisterService;

@Controller
public class AppController {
	
	@Autowired 
	private AppService appService;
	@Autowired
	private JianliService jianliService;
	@Autowired
	private CompanyPositionService companypositionService;
	@Autowired
	private LoginAndRegisterService loginAndRegisterService;
	
	@RequestMapping("/appselectuser")
	@ResponseBody
	public String appselectuser(HttpServletRequest request){
		
		List<User> users = appService.selectuser();
			
		return JSONObject.toJSONString(users);
		
	}
	
	@RequestMapping("/appzhuce")
	@ResponseBody
	public String appzhuce(HttpServletRequest request){
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		User u = loginAndRegisterService.checkuser(username);
		if(u!=null){
			return "0";
		}else{
			User user = new User();
			user.setName(username.substring(0, username.lastIndexOf("@")));
			user.setUsername(username);
			user.setPassword(password);
			user.setType("2");
			loginAndRegisterService.adduser(user);
			
			User u2 = loginAndRegisterService.checkuser(user.getUsername());
			Jianli jianli = new Jianli();
			jianli.setUserid(u2.getUserid());
			jianli.setUpdatetime(getnow());
			jianli.setJianliname(u2.getName());
			loginAndRegisterService.addjianli(jianli);
			
			return "1";
		}
			
		
		
	}
	
	@RequestMapping("/appremenpositions")
	@ResponseBody
	public String appremenpositions(HttpServletRequest request){
		
		List<Posandcom> posandcoms = appService.appremenpositions();
			
		return JSONObject.toJSONString(posandcoms);
		
	}
	@RequestMapping("/applogin")
	@ResponseBody
	public String applogin(HttpServletRequest request){
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		Map map = new HashMap();
		map.put("username", username);
		map.put("password", password);
		User user = appService.applogin(map);
			
		return JSONObject.toJSONString(user);
		
	}
	@RequestMapping("/appjoblist")
	@ResponseBody
	public String appjoblist(HttpServletRequest request){
		/*kd:kd,
 		diqu:diqu,
		yuexin:yuexin,
		jingyan:jingyan,
		xueli:xueli,
		xingzhi:xingzhi,
		page:page*/
		String kd = request.getParameter("kd");
		String diqu = request.getParameter("diqu");
		String yuexin = request.getParameter("yuexin");
		String jingyan = request.getParameter("jingyan");
		String xueli = request.getParameter("xueli");
		String xingzhi = request.getParameter("xingzhi");
		String page = request.getParameter("page");
		int start = 0;
		start = ((Integer.parseInt(page)-1)*20);
		//System.out.println("AAAAAAAAAAAAAAa"+kd+" 地区："+diqu+" 月薪："+yuexin+" 学历："+xueli+" 性质："+xingzhi+" 开始："+start+" 页数："+page);
		Map map = new HashMap();
		map.put("positionname", kd);
		map.put("start", start);
		
		if(diqu!=null&&!diqu.equals("null")){
			map.put("workaddress", diqu);
		}else{
			map.put("workaddress", null);
		}
		if(yuexin!=null&&!yuexin.equals("null")){
			if(yuexin.equals("不限")){
				map.put("salarymin", 0);
				map.put("salarymax", 100000);
			}
			if(yuexin.equals("2k以下")){
				map.put("salarymin", 0);
				map.put("salarymax", 2);
			}
			if(yuexin.equals("2k-5k")){
				map.put("salarymin", 2);
				map.put("salarymax", 5);
			}
			if(yuexin.equals("5k-10k")){
				map.put("salarymin", 5);
				map.put("salarymax", 10);
			}
			if(yuexin.equals("10k-15k")){
				map.put("salarymin", 10);
				map.put("salarymax", 15);
			}
			if(yuexin.equals("15k-25k")){
				map.put("salarymin", 15);
				map.put("salarymax", 25);
			}
			if(yuexin.equals("25k-50k")){
				map.put("salarymin", 25);
				map.put("salarymax", 50);
			}
			if(yuexin.equals("50k以上")){
				map.put("salarymin", 50);
				map.put("salarymax", 100000);
			}
		}else{
			map.put("salarymin", null);
			map.put("salarymax", null);
		}
		if(jingyan!=null&&!jingyan.equals("null")){
			if(jingyan.equals("不限")){
				map.put("experiencestart", -1);
				map.put("experienceend", 10000);
			}
			if(jingyan.equals("应届毕业生")){
				map.put("experiencestart", 0);
				map.put("experienceend", 0);
			}
			if(jingyan.equals("一年以下")){
				map.put("experiencestart", 0);
				map.put("experienceend", 1);
			}
			if(jingyan.equals("1-3年")){
				map.put("experiencestart", 1);
				map.put("experienceend", 3);
			}
			if(jingyan.equals("3-5年")){
				map.put("experiencestart", 3);
				map.put("experienceend", 5);
			}
			if(jingyan.equals("5-10年")){
				map.put("experiencestart", 5);
				map.put("experienceend", 10);
			}
			if(jingyan.equals("10年以上")){
				map.put("experiencestart", 10);
				map.put("experienceend", 10000);
			}
		}else{
			map.put("experiencestart", null);
			map.put("experienceend", null);
		}
		if(xueli!=null&&!xueli.equals("null")){
			if(xueli.equals("不限")){
				map.put("education", 0);
			}
			if(xueli.equals("专科")){
				map.put("education", 1);
			}
			if(xueli.equals("本科")){
				map.put("education", 2);
			}
			if(xueli.equals("硕士")){
				map.put("education", 3);
			}
			if(xueli.equals("博士")){
				map.put("education", 4);
			}
		}else{
			map.put("education", null);
		}
		if(xingzhi!=null&&!xingzhi.equals("null")){
			if(xingzhi.equals("不限")){
				map.put("positionnature", null);
			}
			if(xingzhi.equals("全职")){
				map.put("positionnature", "全职");
			}
			if(xingzhi.equals("兼职")){
				map.put("positionnature", "兼职");
			}
			if(xingzhi.equals("实习")){
				map.put("positionnature", "实习");
			}
		}else{
			map.put("positionnature", null);
		}
		List<Posandcom> posandcoms = appService.appjoblist(map);
			
		return JSONObject.toJSONString(posandcoms);
		
	}
	@RequestMapping("/appcompanylist")
	@ResponseBody
	public String appcompanylist(HttpServletRequest request){
		String comdiqu = request.getParameter("comdiqu");
		String comsize = request.getParameter("comsize");
		String page = request.getParameter("compage");
		System.out.println("AAAAAAAAAAA"+page+comdiqu+comsize);
		int start = 0;
		start = ((Integer.parseInt(page)-1)*15);
		Map map = new HashMap();
		if(comdiqu!=null&&!comdiqu.equals("null")){
			map.put("companyaddress", comdiqu);
		}
		if(comsize!=null&&!comsize.equals("null")){
			map.put("companysize", comsize);
		}
		map.put("start", start);
		List<Company> Companylist = appService.appcompanylist(map);
			
		return JSONObject.toJSONString(Companylist);
		
	}
	@RequestMapping("/appcompanydetailone")
	@ResponseBody
	public String appcompanydetailone(HttpServletRequest request){
		int companyid = Integer.parseInt(request.getParameter("companyid"));
		//System.out.println("AAAAAAAAAAAAAAA"+companyid);
		Company company = appService.appcompanydetailone(companyid);
			
		return JSONObject.toJSONString(company);
		
	}
	@RequestMapping("/appcompanydetailtwo")
	@ResponseBody
	public String appcompanydetailtwo(HttpServletRequest request){
		int companyid = Integer.parseInt(request.getParameter("companyid"));
		//System.out.println("AAAAAAAAAAAAAAA"+companyid);
		Company company = appService.appcompanydetailone(companyid);
			
		return JSONObject.toJSONString(company);
		
	}
	@RequestMapping("/appcompanydetailthree")
	@ResponseBody
	public String appcompanydetailthree(HttpServletRequest request){
		int companyid = Integer.parseInt(request.getParameter("companyid"));
		//System.out.println("AAAAAAAAAAAAAAA"+companyid);
		List<Position> listPosition = appService.appcompanydetailthree(companyid);
			
		return JSONObject.toJSONString(listPosition);
		
	}
	
	@RequestMapping("/appjobdetail")
	@ResponseBody
	public String appjobdetail(HttpServletRequest request){
		int positionid = Integer.parseInt(request.getParameter("positionid"));
		//int companyid = Integer.parseInt(request.getParameter("companyid"));
		//System.out.println("AAAAAAAAAAAAAAA"+companyid);
		Poscom poscom = appService.appjobdetail(positionid);
		//System.out.println("AAAAAAAAAAA"+positionid+"  "+posandcom.toString());
		return JSONObject.toJSONString(poscom);
		
	}
	@RequestMapping("/appuserinfo")
	@ResponseBody
	public String appuserinfo(HttpServletRequest request){
		int userid = Integer.parseInt(request.getParameter("userid"));
		//int companyid = Integer.parseInt(request.getParameter("companyid"));
		//System.out.println("AAAAAAAAAAAAAAA"+companyid);
		Jianli jianli = appService.appuserinfo(userid);
		if(jianli.getWorkexperience()!=null&&jianli.getWorkexperience()!=""){
			jianli.setWorkexperience(jianli.getWorkexperience().replace("</br>", "\r"));
		}
		if(jianli.getSelfdescription()!=null&&jianli.getSelfdescription()!=""){
			jianli.setSelfdescription(jianli.getSelfdescription().replace("</br>", "\r"));
		}
		//System.out.println("AAAAAAAAAAA"+positionid+"  "+posandcom.toString());
		return JSONObject.toJSONString(jianli);
	}
	
	@RequestMapping("/appjiaoyubeijing")
	@ResponseBody
	public String appjiaoyubeijing(HttpServletRequest request){
		int userid = Integer.parseInt(request.getParameter("userid"));
		String schoolname = request.getParameter("schoolname");
		String specialty = request.getParameter("specialty");
		String yearstart = request.getParameter("yearstart");
		String yearend = request.getParameter("yearend");
		
		
		Jianli jianli = new Jianli();
		jianli.setUserid(userid);
		jianli.setSchoolname(schoolname);
		jianli.setSpecialty(specialty);
		jianli.setYearstart(yearstart);
		jianli.setYearend(yearend);
		
		jianli.setUpdatetime(getnow());
		jianliService.uploadjianli(jianli);
		//System.out.println(jianli.toString());
		return JSONObject.toJSONString(1);
	}
	
	@RequestMapping("/appmima")
	@ResponseBody
	public String appmima(HttpServletRequest request){
		int userid = Integer.parseInt(request.getParameter("userid"));
		String password = request.getParameter("password");
		Map map = new HashMap<>();
		map.put("userid", userid);
		map.put("password", password);
		appService.appmima(map);
		//System.out.println(jianli.toString());
		return JSONObject.toJSONString(1);
	}
	@RequestMapping("/appziwomiaoshu")
	@ResponseBody
	public String appziwomiaoshu(HttpServletRequest request){
		int userid = Integer.parseInt(request.getParameter("userid"));
		String selfdescription = request.getParameter("selfdescription");
		
		
		Jianli jianli = new Jianli();
		jianli.setUserid(userid);
		jianli.setSelfdescription(selfdescription);
		if(jianli.getSelfdescription()!=null&&jianli.getSelfdescription()!=""){
			jianli.setSelfdescription(jianli.getSelfdescription().replace("\r", "</br>"));
		}
		jianli.setUpdatetime(getnow());
		jianliService.uploadjianli(jianli);
		//System.out.println(jianli.toString());
		return JSONObject.toJSONString(1);
	}
	@RequestMapping("/appgongzuojingli")
	@ResponseBody
	public String appgongzuojingli(HttpServletRequest request){
		int userid = Integer.parseInt(request.getParameter("userid"));
		String workexperience = request.getParameter("workexperience");
		
		
		Jianli jianli = new Jianli();
		jianli.setUserid(userid);
		jianli.setWorkexperience(workexperience);
		if(jianli.getWorkexperience()!=null&&jianli.getWorkexperience()!=""){
			jianli.setWorkexperience(jianli.getWorkexperience().replace("\r", "</br>"));
		}
		jianli.setUpdatetime(getnow());
		jianliService.uploadjianli(jianli);
		//System.out.println(jianli.toString());
		return JSONObject.toJSONString(1);
	}
	@RequestMapping("/appqiwanggongzuo")
	@ResponseBody
	public String appqiwanggongzuo(HttpServletRequest request){
		int userid = Integer.parseInt(request.getParameter("userid"));
		String workaddress = request.getParameter("workaddress");
		String positionnature = request.getParameter("positionnature");
		String hopepositionname = request.getParameter("hopepositionname");
		int salarymin = Integer.parseInt(request.getParameter("salarymin"));
		int salarymax = Integer.parseInt(request.getParameter("salarymax"));
		
		Jianli jianli = new Jianli();
		jianli.setUserid(userid);
		jianli.setWorkaddress(workaddress);
		jianli.setPositionnature(positionnature);
		jianli.setHopepositionname(hopepositionname);
		jianli.setSalarymin(salarymin);
		jianli.setSalarymax(salarymax);
		
		jianli.setUpdatetime(getnow());
		jianliService.uploadjianli(jianli);
		//System.out.println(jianli.toString());
		return JSONObject.toJSONString(1);
	}
	@RequestMapping("/appjibenxinxi")
	@ResponseBody
	public String appjibenxinxi(HttpServletRequest request){
		int userid = Integer.parseInt(request.getParameter("userid"));
		String name = request.getParameter("name");
		String sex = request.getParameter("sex");
		String education = request.getParameter("education");
		String experience = request.getParameter("experience");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String workstatus = request.getParameter("workstatus");
		
		Jianli jianli = new Jianli();
		jianli.setUserid(userid);
		jianli.setName(name);
		jianli.setSex(sex);
		jianli.setEducation(education);
		jianli.setExperience(experience);
		jianli.setPhone(phone);
		jianli.setEmail(email);
		jianli.setWorkstatus(workstatus);
		if(jianli.getWorkexperience()!=null&&jianli.getWorkexperience()!=""){
			jianli.setWorkexperience(jianli.getWorkexperience().replace("\r", "</br>"));
		}
		if(jianli.getSelfdescription()!=null&&jianli.getWorkexperience()!=""){
			jianli.setSelfdescription(jianli.getSelfdescription().replace("\r", "</br>"));
		}
		//System.out.println("AAAAAAAAAAAAAAAAAAAA"+jianli.getWorkexperience());
		if(jianli.getEducation()!=null){
			if(jianli.getEducation().equals("其他")){
				jianli.setEducation("0");
			}else if(jianli.getEducation().equals("大专")){
				jianli.setEducation("1");
			}else if(jianli.getEducation().equals("本科")){
				jianli.setEducation("2");
			}else if(jianli.getEducation().equals("硕士")){
				jianli.setEducation("3");
			}else{
				jianli.setEducation("4");
			}
		}
		if(jianli.getExperience()!=null){
			if(jianli.getExperience().equals("应届毕业生")){
				jianli.setExperience("0");
			}else if(jianli.getExperience().equals("1年")){
				jianli.setExperience("1");
			}else if(jianli.getExperience().equals("2年")){
				jianli.setExperience("2");
			}else if(jianli.getExperience().equals("3年")){
				jianli.setExperience("3");
			}else if(jianli.getExperience().equals("4年")){
				jianli.setExperience("4");
			}else if(jianli.getExperience().equals("5年")){
				jianli.setExperience("5");
			}else if(jianli.getExperience().equals("6年")){
				jianli.setExperience("6");
			}else if(jianli.getExperience().equals("7年")){
				jianli.setExperience("7");
			}else if(jianli.getExperience().equals("8年")){
				jianli.setExperience("8");
			}else if(jianli.getExperience().equals("9年")){
				jianli.setExperience("9");
			}else if(jianli.getExperience().equals("10年")){
				jianli.setExperience("10");
			}else if(jianli.getExperience().equals("10年以上")){
				jianli.setExperience("11");
			}
		}
		jianli.setUpdatetime(getnow());
		jianliService.uploadjianli(jianli);
		//System.out.println(jianli.toString());
		return JSONObject.toJSONString(1);
	}
	@RequestMapping("/apptoudi")
	@ResponseBody
	public String apptoudi(HttpServletRequest request){
		int positionid = Integer.parseInt(request.getParameter("positionid"));
		int userid = Integer.parseInt(request.getParameter("userid"));
		String positionname = request.getParameter("positionname");
		System.out.println("AAAAAAAAAAAAAAA"+positionid+" "+userid+" "+positionname);

		Jianli jianli = jianliService.jianli(userid);
		//System.out.println("AAAAAAAA"+jianli.toString());
		if(jianli.getJianliname()==null||jianli.getSex()==null||jianli.getEducation()==null||jianli.getExperience()==null||
				jianli.getPhone()==null||jianli.getEmail()==null||jianli.getWorkaddress()==null||jianli.getPositionnature()==null||
				jianli.getHopepositionname()==null||(jianli.getSalarymin()+"")==null||(jianli.getSalarymax()+"")==null||jianli.getSchoolname()==null||
				jianli.getSpecialty()==null||jianli.getYearstart()==null||jianli.getYearend()==null||jianli.getImage()==null ||
				(jianli.getSalarymin()+"").equals("")||(jianli.getSalarymax()+"").equals("")||jianli.getJianliname().equals("")||jianli.getSex().equals("")||jianli.getEducation().equals("")||jianli.getExperience().equals("")||
				jianli.getPhone().equals("")||jianli.getEmail().equals("")||jianli.getWorkaddress().equals("")||jianli.getPositionnature().equals("")||
				jianli.getHopepositionname().equals("")||jianli.getSchoolname().equals("")||
				jianli.getSpecialty().equals("")||jianli.getYearstart().equals("")||jianli.getYearend().equals("")||jianli.getImage().equals("")){
			return "1";// 简历不合格不可以投递
		}
		//System.out.println(jianli.toString());
		else{
			Map map=new HashMap();  
			map.put("positionid",positionid);  
			map.put("status","1");  
			Position position = companypositionService.getpositiondetail(map);
			if(position==null){
				return "4"; // 此职位已经删除
			}
			//System.out.println(position.toString());
			map.put("userid", userid);
			Delivery delivery2 = jianliService.selectdelivert(map);
			if(delivery2!=null){
				return "2"; // 已经投递此职位
			}else{
				Map newMap = new HashMap(); 
				Delivery delivery3 = new Delivery();//创建新的delivery用于插入
				delivery3 = zhuanhuan(jianli);
				delivery3.setPositionid(positionid);
				delivery3.setPositionname(positionname);
				delivery3.setUpdatetime(getnow());
				if(Integer.parseInt(jianli.getEducation())<Integer.parseInt(position.getEducation()) || !jianli.getWorkaddress().equals(position.getWorkaddress()) || Integer.parseInt(jianli.getExperience())<Integer.parseInt(position.getExperience()) ){
					//System.out.println(jianli.getEducation()+"  "+position.getEducation()+"  "+jianli.getWorkaddress()+"  "+position.getWorkaddress()+"  "+jianli.getExperience()+"  "+position.getExperience());
					delivery3.setStatus(4); // 自动过滤
					jianliService.delivery(delivery3);
					//System.out.println("自动过滤!!!!!!!!!!!!!!");
				}else{
					delivery3.setStatus(0);// status:0未查看
					jianliService.delivery(delivery3);
				}
				//System.out.println("AAAAAAAAAAAAAAAAA"+delivery.getPositionid()+delivery.getPositionname());
				return "3"; // 投递成功
			}	
		}
	
		
	}
	//简历转换为投递
	public Delivery zhuanhuan(Jianli jianli){
			Delivery delivery = new Delivery();
			delivery.setUserid(jianli.getUserid());
			delivery.setJianliname(jianli.getJianliname());
			delivery.setImage(jianli.getImage());
			delivery.setName(jianli.getName());
			delivery.setSex(jianli.getSex());
			delivery.setEducation(jianli.getEducation());
			delivery.setExperience(jianli.getExperience());
			delivery.setPhone(jianli.getPhone());
			delivery.setEmail(jianli.getEmail());
			delivery.setWorkstatus(jianli.getWorkstatus());
			delivery.setWorkaddress(jianli.getWorkaddress());
			delivery.setPositionnature(jianli.getPositionnature());
			delivery.setHopepositionname(jianli.getHopepositionname());
			delivery.setSalarymin(jianli.getSalarymin());
			delivery.setSalarymax(jianli.getSalarymax());
			delivery.setWorkexperience(jianli.getWorkexperience());
			delivery.setSchoolname(jianli.getSchoolname());
			delivery.setSpecialty(jianli.getSpecialty());
			delivery.setYearstart(jianli.getYearstart());
			delivery.setYearend(jianli.getYearend());
			delivery.setSelfdescription(jianli.getSelfdescription());
			delivery.setCertification(jianli.getCertification());
			return delivery;
			
		}
	//进行日期格式转换
	public  Date getnow(){
			Date date=new java.util.Date();
			java.sql.Date sqlDate=new java.sql.Date(date.getTime());
			return sqlDate;
		}
	
}
