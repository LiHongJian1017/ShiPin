package com.shipin.pojo;

import java.util.Date;

public class Posandcom {

	private int positionid;				//ְλid
	private String positionname;		//ְλ����
	private String workaddress;			//�ص�(��:����)
	private int salarymin;				//��н��С
	private int salarymax;				//��н���
	private String education;			//ѧ��
	private String experience;			//����
	private String positionadvantage;	//ְλ�ջ�
	private Date releasetime;			//����ʱ��
	
	private int companyid;				//��˾id
	private String companyname;			//��˾����
	private String companytype;			//��˾����(��ѧ,����...)
	private String companysize;			//��˾��ģ(��:100-200��)
	private String companyceoname;		//��ʼ��
	private String companylogo;			//��˾logoURL
	private String companytag1;			//��˾��ǩ1
	private String companytag2;			//��˾��ǩ2
	private String companytag3;			//��˾��ǩ3
	private String companytag4;			//��˾��ǩ4
	private String companytag5;			//��˾��ǩ5
	
	
	public int getPositionid() {
		return positionid;
	}
	public void setPositionid(int positionid) {
		this.positionid = positionid;
	}
	public String getPositionname() {
		return positionname;
	}
	public void setPositionname(String positionname) {
		this.positionname = positionname;
	}
	public String getWorkaddress() {
		return workaddress;
	}
	public void setWorkaddress(String workaddress) {
		this.workaddress = workaddress;
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
	public int getCompanyid() {
		return companyid;
	}
	public void setCompanyid(int companyid) {
		this.companyid = companyid;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getCompanytype() {
		return companytype;
	}
	public void setCompanytype(String companytype) {
		this.companytype = companytype;
	}
	public String getCompanysize() {
		return companysize;
	}
	public void setCompanysize(String companysize) {
		this.companysize = companysize;
	}
	public String getCompanyceoname() {
		return companyceoname;
	}
	public void setCompanyceoname(String companyceoname) {
		this.companyceoname = companyceoname;
	}
	public String getCompanylogo() {
		return companylogo;
	}
	public void setCompanylogo(String companylogo) {
		this.companylogo = companylogo;
	}
	public String getCompanytag1() {
		return companytag1;
	}
	public void setCompanytag1(String companytag1) {
		this.companytag1 = companytag1;
	}
	public String getCompanytag2() {
		return companytag2;
	}
	public void setCompanytag2(String companytag2) {
		this.companytag2 = companytag2;
	}
	public String getCompanytag3() {
		return companytag3;
	}
	public void setCompanytag3(String companytag3) {
		this.companytag3 = companytag3;
	}
	public String getCompanytag4() {
		return companytag4;
	}
	public void setCompanytag4(String companytag4) {
		this.companytag4 = companytag4;
	}
	public String getCompanytag5() {
		return companytag5;
	}
	public void setCompanytag5(String companytag5) {
		this.companytag5 = companytag5;
	}
	@Override
	public String toString() {
		return "Posandcom [positionid=" + positionid + ", positionname=" + positionname + ", workaddress=" + workaddress
				+ ", salarymin=" + salarymin + ", salarymax=" + salarymax + ", education=" + education + ", experience="
				+ experience + ", positionadvantage=" + positionadvantage + ", releasetime=" + releasetime
				+ ", companyid=" + companyid + ", companyname=" + companyname + ", companytype=" + companytype
				+ ", companysize=" + companysize + ", companyceoname=" + companyceoname + ", companylogo=" + companylogo
				+ ", companytag1=" + companytag1 + ", companytag2=" + companytag2 + ", companytag3=" + companytag3
				+ ", companytag4=" + companytag4 + ", companytag5=" + companytag5 + "]";
	}
	
}
