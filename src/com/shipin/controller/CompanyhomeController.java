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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.shipin.pojo.Company;
import com.shipin.pojo.Lianheposition;
import com.shipin.pojo.Position;
import com.shipin.service.CompanyhomeService;
import com.shipin.service.PosandcomService;

@Controller
public class CompanyhomeController {
	
	@Autowired
	private CompanyhomeService companyhomeService;
	@Autowired
	PosandcomService posandcomService;
	
	@RequestMapping("/myhome")
	public String myhome(HttpServletRequest request,Model model){
		//int companyid = Integer.parseInt(request.getParameter("companyid"));
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("companyid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			int companyid = Integer.parseInt(session.getAttribute("companyid").toString());
			//System.out.println(companyid);
			Company company = companyhomeService.companyAll(companyid);
			Lianheposition lianheposition = posandcomService.selectlianheposition(companyid);
			model.addAttribute("company", company);
			//System.out.println(company.toString());
			
			Map<String,String> map=new HashMap<String,String>();  
			map.put("companyid",companyid+"");  
			map.put("status","1");  
			List<Position> listPosition = companyhomeService.select_position(map);
			//System.out.println(listPosition.toString());
			model.addAttribute("listPosition", listPosition);
			model.addAttribute("lianheposition", lianheposition);
			return "com/myhome";
		}
	}
	
	@RequestMapping("/updatecompanyceo")
	public String updatecompanyceo(HttpServletRequest request,Company company,MultipartFile logo) throws IllegalStateException, IOException{
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("companyid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			String companyid = company.getCompanyid()+"";
			String companyceoname = company.getCompanyceoname();
			String companyceoposition = company.getCompanyceoposition();
			String companyceoweibo = company.getCompanyceoweibo();
			String companyceoremark = company.getCompanyceoremark();
			
			int realcompanyid = Integer.parseInt(companyid);
			Company delcompanyceologo = companyhomeService.companyAll(realcompanyid);
			File f=new File("E:\\image\\" + delcompanyceologo.getCompanyceologo()); 
			if(f.exists()){
				deleteFile(f.getCanonicalPath());
			}
			
			//1. 获取图片完整名称
			String fileStr = logo.getOriginalFilename();
			
			boolean status = fileStr.contains(".");  
			Map<String,String> map=new HashMap<String,String>();  
			if(status){
				//2. 使用随机生成的字符串+源图片扩展名组成新的图片名称,防止图片重名
				String newfileName = UUID.randomUUID().toString() +  fileStr.substring(fileStr.lastIndexOf("."));
				//3. 将图片保存到硬盘
				logo.transferTo(new File("E:\\image\\" + newfileName));
				//4.将图片名称等信息保存到数据库
				company.setCompanyceologo(newfileName);
				String companyceologo = company.getCompanyceologo();
				map.put("companyceologo",companyceologo);  
			}else{
				map.put("companyceologo","");  
			}
			
			map.put("companyid",companyid);  
			map.put("companyceoname",companyceoname);  
			map.put("companyceoposition",companyceoposition);  
			map.put("companyceoweibo",companyceoweibo);  
			map.put("companyceoremark",companyceoremark);  
			
			
			//System.out.println("aaaaaaaaaaaaa"+company.toString());
			companyhomeService.updatecompanyceo(map);
			
			return "redirect:myhome.action";
		}
		
	}

	@RequestMapping("/uploadlogo")
	public String uploadlogo(MultipartFile companylogo,HttpServletRequest request) throws IllegalStateException, IOException{
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("companyid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			int companyid = Integer.parseInt(request.getParameter("companyid"));
			Company delcompanyceologo = companyhomeService.companyAll(companyid);
			File f=new File("E:\\image\\" + delcompanyceologo.getCompanylogo()); 
			if(f.exists()){
				deleteFile(f.getCanonicalPath());
			}
			//1. 获取图片完整名称
			String fileStr = companylogo.getOriginalFilename();
			//2. 使用随机生成的字符串+源图片扩展名组成新的图片名称,防止图片重名
			String newfileName = UUID.randomUUID().toString() +  fileStr.substring(fileStr.lastIndexOf("."));
			//3. 将图片保存到硬盘
			companylogo.transferTo(new File("E:\\image\\" + newfileName));
			//4.将图片名称等信息保存到数据库
			Company company = new Company(); 
			company.setCompanylogo(newfileName);
			company.setCompanyid(companyid);
			companyhomeService.uploadlogo(company);
			return "redirect:myhome.action";
		}
	}
	@RequestMapping("/updatetags")
	public String updatetags(Company company,HttpServletRequest request) throws IllegalStateException, IOException{
		//System.out.println("AAAAAAAAAAAAAAAAAAAA"+company.toString());
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("companyid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			companyhomeService.updatetags(company);
			return "redirect:myhome.action";
		}
	}
	@RequestMapping("/updatecompanytop")
	public String updatecompanytop(Company company,HttpServletRequest request) throws IllegalStateException, IOException{
		//System.out.println("AAAAAAAAAAAAAAAAAAAA"+company.toString());
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("companyid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			companyhomeService.updatecompanytop(company);
			return "redirect:myhome.action";
		}
	}
	@RequestMapping("/updatecompanyintroduce")
	public String updatecompanyintroduce(Company company,HttpServletRequest request) throws IllegalStateException, IOException{
		//System.out.println("AAAAAAAAAAAAAAAAAAAA"+company.toString());
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("companyid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			companyhomeService.updatecompanyintroduce(company);
			return "redirect:myhome.action";
		}
	}
	@RequestMapping("/updatecompanyright")
	public String updatecompanyright(Company company,HttpServletRequest request) throws IllegalStateException, IOException{
		//System.out.println("AAAAAAAAAAAAAAAAAAAA"+company.toString());
		HttpSession session=request.getSession();
		Object obj = session.getAttribute("companyid");
		if(obj==null){
			return "redirect:logout.action";
		}else{
			companyhomeService.updatecompanyright(company);
			return "redirect:myhome.action";
		}
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
