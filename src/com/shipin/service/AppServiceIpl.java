package com.shipin.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shipin.dao.AppDao;
import com.shipin.pojo.Company;
import com.shipin.pojo.Jianli;
import com.shipin.pojo.Posandcom;
import com.shipin.pojo.Poscom;
import com.shipin.pojo.Position;
import com.shipin.pojo.User;

@Service
public class AppServiceIpl implements AppService{

	@Autowired 
	private AppDao appDao;
	
	@Override
	public List<User> selectuser() {
		// TODO Auto-generated method stub
		return appDao.selectuser();
	}

	@Override
	public List<Posandcom> appremenpositions() {
		// TODO Auto-generated method stub
		return appDao.appremenpositions();
	}

	@Override
	public User applogin(Map map) {
		// TODO Auto-generated method stub
		return appDao.applogin(map);
	}

	@Override
	public List<Posandcom> appjoblist(Map map) {
		// TODO Auto-generated method stub
		return appDao.appjoblist(map);
	}

	@Override
	public List<Company> appcompanylist(Map map) {
		// TODO Auto-generated method stub
		return appDao.appcompanylist(map);
	}

	@Override
	public Company appcompanydetailone(int companyid) {
		// TODO Auto-generated method stub
		return appDao.appcompanydetailone(companyid);
	}

	@Override
	public List<Position> appcompanydetailthree(int companyid) {
		// TODO Auto-generated method stub
		return appDao.appcompanydetailthree(companyid);
	}

	@Override
	public Poscom appjobdetail(int positionid) {
		// TODO Auto-generated method stub
		return appDao.appjobdetail(positionid);
	}

	@Override
	public Jianli appuserinfo(int userid) {
		// TODO Auto-generated method stub
		return appDao.appuserinfo(userid);
	}

	@Override
	public void appmima(Map map) {
		// TODO Auto-generated method stub
		appDao.appmima(map);
	}

}
