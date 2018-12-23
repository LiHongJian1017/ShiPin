package com.shipin.pojo;

import java.util.Date;

public class Collection {

	private int userid;
	private int positionid;
	private Date updatetime;
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getPositionid() {
		return positionid;
	}
	public void setPositionid(int positionid) {
		this.positionid = positionid;
	}
	public Date getUpdatetime() {
		return updatetime;
	}
	public void setUpdatetime(Date updatetime) {
		this.updatetime = updatetime;
	}
	@Override
	public String toString() {
		return "Collection [userid=" + userid + ", positionid=" + positionid + ", updatetime=" + updatetime + "]";
	}
	
	
}
