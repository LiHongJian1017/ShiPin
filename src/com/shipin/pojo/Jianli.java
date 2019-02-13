package com.shipin.pojo;

import java.util.Date;

public class Jianli {

	private Integer jianliid;
	private Integer userid;
	private String jianliname;
	private String image;
	private String name;
	private String sex;
	private String education;
	private String experience;
	private String phone;
	private String email;
	private String workstatus;
	private String workaddress;
	private String positionnature;
	private String hopepositionname;
	private Integer salarymin;
	private Integer salarymax;
	private String workexperience;
	private String schoolname;
	private String specialty;
	private String yearstart;
	private String yearend;
	private String selfdescription;
	private String certification;
	private Integer status;
	private Date updatetime;
	
	public String getCertification() {
		return certification;
	}
	public void setCertification(String certification) {
		this.certification = certification;
	}
	public Integer getJianliid() {
		return jianliid;
	}
	public void setJianliid(Integer jianliid) {
		this.jianliid = jianliid;
	}
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public String getJianliname() {
		return jianliname;
	}
	public void setJianliname(String jianliname) {
		this.jianliname = jianliname;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
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
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getWorkstatus() {
		return workstatus;
	}
	public void setWorkstatus(String workstatus) {
		this.workstatus = workstatus;
	}
	public String getWorkaddress() {
		return workaddress;
	}
	public void setWorkaddress(String workaddress) {
		this.workaddress = workaddress;
	}
	public String getPositionnature() {
		return positionnature;
	}
	public void setPositionnature(String positionnature) {
		this.positionnature = positionnature;
	}
	public String getHopepositionname() {
		return hopepositionname;
	}
	public void setHopepositionname(String hopepositionname) {
		this.hopepositionname = hopepositionname;
	}
	public Integer getSalarymin() {
		return salarymin;
	}
	public void setSalarymin(Integer salarymin) {
		this.salarymin = salarymin;
	}
	public Integer getSalarymax() {
		return salarymax;
	}
	public void setSalarymax(Integer salarymax) {
		this.salarymax = salarymax;
	}
	public String getWorkexperience() {
		return workexperience;
	}
	public void setWorkexperience(String workexperience) {
		this.workexperience = workexperience;
	}
	public String getSchoolname() {
		return schoolname;
	}
	public void setSchoolname(String schoolname) {
		this.schoolname = schoolname;
	}
	public String getSpecialty() {
		return specialty;
	}
	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}
	public String getYearstart() {
		return yearstart;
	}
	public void setYearstart(String yearstart) {
		this.yearstart = yearstart;
	}
	public String getYearend() {
		return yearend;
	}
	public void setYearend(String yearend) {
		this.yearend = yearend;
	}
	public String getSelfdescription() {
		return selfdescription;
	}
	public void setSelfdescription(String selfdescription) {
		this.selfdescription = selfdescription;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Date getUpdatetime() {
		return updatetime;
	}
	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}
	@Override
	public String toString() {
		return "Jianli [jianliid=" + jianliid + ", userid=" + userid + ", jianliname=" + jianliname + ", image=" + image
				+ ", name=" + name + ", sex=" + sex + ", education=" + education + ", experience=" + experience
				+ ", phone=" + phone + ", email=" + email + ", workstatus=" + workstatus + ", workaddress="
				+ workaddress + ", positionnature=" + positionnature + ", hopepositionname=" + hopepositionname
				+ ", salarymin=" + salarymin + ", salarymax=" + salarymax + ", workexperience=" + workexperience
				+ ", schoolname=" + schoolname + ", specialty=" + specialty + ", yearstart=" + yearstart + ", yearend="
				+ yearend + ", selfdescription=" + selfdescription + ", certification=" + certification + ", status="
				+ status + ", updatetime=" + updatetime + "]";
	}
}
