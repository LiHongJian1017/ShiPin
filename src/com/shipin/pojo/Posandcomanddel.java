package com.shipin.pojo;

import java.util.Date;

public class Posandcomanddel {
	
	private int companyid;
	private int positionid;
	private int deliveryid;
	
	private String companyname;
	private String positionname;
	private String jianliname;
	private String workaddress;
	private int status;
	private int salarymin;
	private int salarymax;
	private Date updatetime;
	
	public int getCompanyid() {
		return companyid;
	}
	public void setCompanyid(int companyid) {
		this.companyid = companyid;
	}
	public int getPositionid() {
		return positionid;
	}
	public void setPositionid(int positionid) {
		this.positionid = positionid;
	}
	public int getDeliveryid() {
		return deliveryid;
	}
	public void setDeliveryid(int deliveryid) {
		this.deliveryid = deliveryid;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getPositionname() {
		return positionname;
	}
	public void setPositionname(String positionname) {
		this.positionname = positionname;
	}
	public String getJianliname() {
		return jianliname;
	}
	public void setJianliname(String jianliname) {
		this.jianliname = jianliname;
	}
	public String getWorkaddress() {
		return workaddress;
	}
	public void setWorkaddress(String workaddress) {
		this.workaddress = workaddress;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
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
	public Date getUpdatetime() {
		return updatetime;
	}
	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}
	@Override
	public String toString() {
		return "Posandcomanddel [companyid=" + companyid + ", positionid=" + positionid + ", deliveryid=" + deliveryid
				+ ", companyname=" + companyname + ", positionname=" + positionname + ", jianliname=" + jianliname
				+ ", workaddress=" + workaddress + ", status=" + status + ", salarymin=" + salarymin + ", salarymax="
				+ salarymax + ", updatetime=" + updatetime + "]";
	}
	
	
	
}
