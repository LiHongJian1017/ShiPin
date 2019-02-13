package com.shipin.pojo;

import java.util.Date;

public class Certification {

	private Integer userid;
	private String realname;
	private String idcard;
	private String certificatename;
	private String certificateno;
	private String certificateimg;
	private String reason;
	private Integer status;
	private Date updatetime;
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getIdcard() {
		return idcard;
	}
	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	public String getCertificatename() {
		return certificatename;
	}
	public void setCertificatename(String certificatename) {
		this.certificatename = certificatename;
	}
	public String getCertificateno() {
		return certificateno;
	}
	public void setCertificateno(String certificateno) {
		this.certificateno = certificateno;
	}
	public String getCertificateimg() {
		return certificateimg;
	}
	public void setCertificateimg(String certificateimg) {
		this.certificateimg = certificateimg;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
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
		return "Certification [userid=" + userid + ", realname=" + realname + ", idcard=" + idcard
				+ ", certificatename=" + certificatename + ", certificateno=" + certificateno + ", certificateimg="
				+ certificateimg + ", reason=" + reason + ", status=" + status + ", updatetime=" + updatetime + "]";
	}
	
}
