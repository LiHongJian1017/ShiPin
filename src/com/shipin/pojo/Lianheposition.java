package com.shipin.pojo;

import java.util.Date;

public class Lianheposition {

	private int positionid;				//职位id
	private String positiontype;		//职位类型
	private String positionname;		//职位名称
	private String positionnature;		//职位性质
	private String positiondetail;		//职位描述
	private String workaddress;			//地点(如:北京)
	private String positionaddress;		//详细地点(如:北京石景山)
	private int salarymin;				//月薪最小
	private int salarymax;				//月薪最大
	private String education;			//学历
	private String experience;			//经验
	private String positionadvantage;	//职位诱惑
	private Date releasetime;			//发布时间
	private int status;					//职位状态(0下线 1上线 2联合招聘)
	private int number;					//人数(联合招聘)
	private int companyid;				//公司id
	public int getPositionid() {
		return positionid;
	}
	public void setPositionid(int positionid) {
		this.positionid = positionid;
	}
	public String getPositiontype() {
		return positiontype;
	}
	public void setPositiontype(String positiontype) {
		this.positiontype = positiontype;
	}
	public String getPositionname() {
		return positionname;
	}
	public void setPositionname(String positionname) {
		this.positionname = positionname;
	}
	public String getPositionnature() {
		return positionnature;
	}
	public void setPositionnature(String positionnature) {
		this.positionnature = positionnature;
	}
	public String getPositiondetail() {
		return positiondetail;
	}
	public void setPositiondetail(String positiondetail) {
		this.positiondetail = positiondetail;
	}
	public String getWorkaddress() {
		return workaddress;
	}
	public void setWorkaddress(String workaddress) {
		this.workaddress = workaddress;
	}
	public String getPositionaddress() {
		return positionaddress;
	}
	public void setPositionaddress(String positionaddress) {
		this.positionaddress = positionaddress;
	}
	public int getSalarymin() {
		return salarymin;
	}
	public void setSalarymin(int salarymin) {
		this.salarymin = salarymin;
	}
	public int getSalarymax() {
		return salarymax;
	}
	public void setSalarymax(int salarymax) {
		this.salarymax = salarymax;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getPositionadvantage() {
		return positionadvantage;
	}
	public void setPositionadvantage(String positionadvantage) {
		this.positionadvantage = positionadvantage;
	}
	public Date getReleasetime() {
		return releasetime;
	}
	public void setReleasetime(Date releasetime) {
		this.releasetime = releasetime;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public int getCompanyid() {
		return companyid;
	}
	public void setCompanyid(int companyid) {
		this.companyid = companyid;
	}
	@Override
	public String toString() {
		return "Position [positionid=" + positionid + ", positiontype=" + positiontype + ", positionname="
				+ positionname + ", positionnature=" + positionnature + ", positiondetail=" + positiondetail
				+ ", workaddress=" + workaddress + ", positionaddress=" + positionaddress + ", salarymin=" + salarymin
				+ ", salarymax=" + salarymax + ", education=" + education + ", experience=" + experience
				+ ", positionadvantage=" + positionadvantage + ", releasetime=" + releasetime + ", status=" + status
				+ ", number=" + number + ", companyid=" + companyid + "]";
	}
	
	
}
