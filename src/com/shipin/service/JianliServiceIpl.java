package com.shipin.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shipin.dao.CompanyhomeDao;
import com.shipin.dao.UserjianliDao;
import com.shipin.pojo.Delivery;
import com.shipin.pojo.Jianli;
@Service
public class JianliServiceIpl implements JianliService{

	@Autowired
	private UserjianliDao userjianliDao;
	
	@Override
	public Jianli jianli(int userid) {
		// TODO Auto-generated method stub
		return userjianliDao.jianli(userid);
	}

	@Override
	public void uploadjianli(Jianli jianli) {
		// TODO Auto-generated method stub
		userjianliDao.uploadjianli(jianli);
	}

	@Override
	public Delivery selectdelivert(Map map) {
		// TODO Auto-generated method stub
		return userjianliDao.selectdelivert(map);
	}

	@Override
	public void delivery(Delivery delivery) {
		// TODO Auto-generated method stub
		userjianliDao.delivery(delivery);
	}

	@Override
	public void uploadjianlistatus(Map map) {
		// TODO Auto-generated method stub
		userjianliDao.uploadjianlistatus(map);
	}

}
