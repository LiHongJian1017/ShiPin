package com.shipin.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
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

import com.shipin.pojo.Company;
import com.shipin.pojo.Delivery;
import com.shipin.pojo.Jianli;
import com.shipin.pojo.Position;
import com.shipin.service.CompanyPositionService;
import com.shipin.service.JianliService;
import com.shipin.service.PosandcomService;

@Controller
public class UserjianliController {
	
	@Autowired
	JianliService jianliService;
	@Autowired
	private CompanyPositionService companypositionService;
	
	@RequestMapping("/jianli")
	public String jianli(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("userid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			int userid=Integer.parseInt(session.getAttribute("userid").toString());
			Jianli jianli = jianliService.jianli(userid);
			if(jianli.getWorkexperience()!=null&&jianli.getWorkexperience()!=""){
				jianli.setWorkexperience(jianli.getWorkexperience().replace("</br>", "\r"));
			}
			if(jianli.getSelfdescription()!=null&&jianli.getSelfdescription()!=""){
				jianli.setSelfdescription(jianli.getSelfdescription().replace("</br>", "\r"));
			}
			
			model.addAttribute("jianli", jianli);
			return "tea/jianli";
		}
	}
	@RequestMapping("/uploadjianli")
	public String uploadjianli(Jianli jianli,HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("userid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			int userid=Integer.parseInt(session.getAttribute("userid").toString());
			jianli.setUserid(userid);
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
			model.addAttribute("jianli", jianli);
			return "tea/jianli";
		}
	}
	
	@RequestMapping("/uploadjianliimage")
	@ResponseBody
	public String uploadjianliimage(HttpServletRequest request,Model model,MultipartFile image) throws IllegalStateException, IOException{
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("userid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			int userid=Integer.parseInt(session.getAttribute("userid").toString());
			Jianli delimage = jianliService.jianli(userid);
			File f=new File("E:\\image\\" + delimage.getImage()); 
			if(f.exists()){
				deleteFile(f.getCanonicalPath());
			}
			//1. 获取图片完整名称
			String fileStr = image.getOriginalFilename();
			//2. 使用随机生成的字符串+源图片扩展名组成新的图片名称,防止图片重名
			String newfileName = UUID.randomUUID().toString() +  fileStr.substring(fileStr.lastIndexOf("."));
			//3. 将图片保存到硬盘
			image.transferTo(new File("E:\\image\\" + newfileName));
			//4.将图片名称等信息保存到数据库
			Jianli jianli = new Jianli(); 
			jianli.setUserid(userid);
			jianli.setImage(newfileName);
			jianli.setUpdatetime(getnow());
			jianliService.uploadjianli(jianli);
			//System.out.println("AAAAAAAAAAAAAAAAA"+fileStr+"UUUUUUUUU"+jianli.getUserid()+jianli.getImage());
			Jianli jianliall = jianliService.jianli(userid);
			//model.addAttribute("jianli", jianliall);
			return "1";
		}
	}
	@RequestMapping("/preview")
	public String preview(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("userid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			int userid=Integer.parseInt(session.getAttribute("userid").toString());
			Jianli jianli = jianliService.jianli(userid);
			model.addAttribute("jianli", jianli);
			//System.out.println(jianli.toString());
			return "tea/preview";
		}
	}
	
	@RequestMapping("/deliveryjianli")
	@ResponseBody
	public String deliveryjianli(Delivery delivery,HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("userid");
		if(obj==null){
			return "0"; // 失去session,返回登录界面
		}else{
			int userid=Integer.parseInt(session.getAttribute("userid").toString());
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
				String positionid = delivery.getPositionid()+"";
				map.put("positionid",positionid);  
				map.put("status","1");  
				Position position = companypositionService.getpositiondetail(map);
				//System.out.println(position.toString());
				map.put("userid", userid);
				Delivery delivery2 = jianliService.selectdelivert(map);
				if(delivery2!=null){
					return "2"; // 已经投递此职位
				}else{
					Map newMap = new HashMap(); 
					int positionidd = delivery.getPositionid();
					String positionname = delivery.getPositionname();
					Delivery delivery3 = new Delivery();//创建新的delivery用于插入
					delivery3 = zhuanhuan(jianli);
					delivery3.setPositionid(positionidd);
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
	}
	
	@RequestMapping("/updatejiaoyubeijingtest")
	public String updatejiaoyubeijing(HttpServletRequest request,Model model){
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("userid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			int userid=Integer.parseInt(session.getAttribute("userid").toString());
			String schoolname = (String) request.getAttribute("schoolName");
			String specialty = (String)request.getAttribute("professionalName");
			String yearstart = (String)request.getAttribute("schoolYearStart");
			String yearend = (String)request.getAttribute("schoolYearEnd");
			//System.out.println("AAAAAAAAAAAAAAAAA"+userid+schoolname+specialty+yearstart+yearend);
			Jianli jianli = new Jianli();
			jianli.setUserid(userid);
			jianli.setSchoolname(schoolname);
			jianli.setSpecialty(specialty);
			jianli.setYearstart(yearstart);
			jianli.setYearend(yearend);

			jianli.setUpdatetime(getnow());
			jianliService.uploadjianli(jianli);
			
			return "redirect:jianli.action";
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
}
