package com.shipin.pojo;

public class Company {
	
	private int companyid;				//公司id
	private int userid;				//公司id
	private String companyname;			//公司名称
	private String companyfeatures;		//公司优势
	private String companyintroduce;	//公司介绍
	private String companytype;			//公司类型(大学,初中...)
	private String companyaddress;		//公司地点
	private String companysize;			//公司规模(如:100-200人)
	private String companyceoname;		//创始人
	private String companyceologo;		//创始人logoURL
	private String companyceoposition;	//创始人职称
	private String companyceoweibo;		//创始人微博
	private String companyceoremark;	//创始人简介
	private String companyweb;			//公司网站
	private String companylogo;			//公司logoURL
	private String companytag1;			//公司标签1
	private String companytag2;			//公司标签2
	private String companytag3;			//公司标签3
	private String companytag4;			//公司标签4
	private String companytag5;			//公司标签5
	
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getCompanyfeatures() {
		return companyfeatures;
	}
	public void setCompanyfeatures(String companyfeatures) {
		this.companyfeatures = companyfeatures;
	}
	public String getCompanyceoname() {
		return companyceoname;
	}
	public void setCompanyceoname(String companyceoname) {
		this.companyceoname = companyceoname;
	}
	public String getCompanyceoposition() {
		return companyceoposition;
	}
	public void setCompanyceoposition(String companyceoposition) {
		this.companyceoposition = companyceoposition;
	}
	public String getCompanyceoweibo() {
		return companyceoweibo;
	}
	public void setCompanyceoweibo(String companyceoweibo) {
		this.companyceoweibo = companyceoweibo;
	}
	public String getCompanyceoremark() {
		return companyceoremark;
	}
	public void setCompanyceoremark(String companyceoremark) {
		this.companyceoremark = companyceoremark;
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
	public String getCompanyintroduce() {
		return companyintroduce;
	}
	public void setCompanyintroduce(String companyintroduce) {
		this.companyintroduce = companyintroduce;
	}
	public String getCompanytype() {
		return companytype;
	}
	public void setCompanytype(String companytype) {
		this.companytype = companytype;
	}
	public String getCompanyaddress() {
		return companyaddress;
	}
	public void setCompanyaddress(String companyaddress) {
		this.companyaddress = companyaddress;
	}
	public String getCompanysize() {
		return companysize;
	}
	public void setCompanysize(String companysize) {
		this.companysize = companysize;
	}
	public String getCompanyceologo() {
		return companyceologo;
	}
	public void setCompanyceologo(String companyceologo) {
		this.companyceologo = companyceologo;
	}
	public String getCompanyweb() {
		return companyweb;
	}
	public void setCompanyweb(String companyweb) {
		this.companyweb = companyweb;
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
		return "Company [companyid=" + companyid + ", userid=" + userid + ", companyname=" + companyname
				+ ", companyfeatures=" + companyfeatures + ", companyintroduce=" + companyintroduce + ", companytype="
				+ companytype + ", companyaddress=" + companyaddress + ", companysize=" + companysize
				+ ", companyceoname=" + companyceoname + ", companyceologo=" + companyceologo + ", companyceoposition="
				+ companyceoposition + ", companyceoweibo=" + companyceoweibo + ", companyceoremark=" + companyceoremark
				+ ", companyweb=" + companyweb + ", companylogo=" + companylogo + ", companytag1=" + companytag1
				+ ", companytag2=" + companytag2 + ", companytag3=" + companytag3 + ", companytag4=" + companytag4
				+ ", companytag5=" + companytag5 + "]";
	}
	
}
