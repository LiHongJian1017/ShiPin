package com.shipin.pojo;

public class Company {
	
	private int companyid;				//��˾id
	private int userid;				//��˾id
	private String companyname;			//��˾����
	private String companyfeatures;		//��˾����
	private String companyintroduce;	//��˾����
	private String companytype;			//��˾����(��ѧ,����...)
	private String companyaddress;		//��˾�ص�
	private String companysize;			//��˾��ģ(��:100-200��)
	private String companyceoname;		//��ʼ��
	private String companyceologo;		//��ʼ��logoURL
	private String companyceoposition;	//��ʼ��ְ��
	private String companyceoweibo;		//��ʼ��΢��
	private String companyceoremark;	//��ʼ�˼��
	private String companyweb;			//��˾��վ
	private String companylogo;			//��˾logoURL
	private String companytag1;			//��˾��ǩ1
	private String companytag2;			//��˾��ǩ2
	private String companytag3;			//��˾��ǩ3
	private String companytag4;			//��˾��ǩ4
	private String companytag5;			//��˾��ǩ5
	
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
