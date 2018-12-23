package com.shipin.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shipin.dao.CompanyhomeDao;
import com.shipin.pojo.Company;
import com.shipin.pojo.Position;

@Service
public class CompanyhomeServiceIpl implements CompanyhomeService{

	@Autowired
	private CompanyhomeDao companyhomeDao;
	
	@Override
	public void updatecompanyceo(Map map) {
		// TODO Auto-generated method stub
		companyhomeDao.updatecompanyceo(map);
	}

	@Override
	public Company companyAll(int companyid) {
		// TODO Auto-generated method stub
		return companyhomeDao.companyAll(companyid);
	}

	@Override
	public void uploadlogo(Company company) {
		// TODO Auto-generated method stub
		companyhomeDao.uploadlogo(company);
	}

	@Override
	public void updatetags(Company company) {
		// TODO Auto-generated method stub
		companyhomeDao.updatetags(company);
	}

	@Override
	public void updatecompanytop(Company company) {
		// TODO Auto-generated method stub
		companyhomeDao.updatecompanytop(company);
	}

	@Override
	public void updatecompanyintroduce(Company company) {
		// TODO Auto-generated method stub
		companyhomeDao.updatecompanyintroduce(company);
	}

	@Override
	public void updatecompanyright(Company company) {
		// TODO Auto-generated method stub
		companyhomeDao.updatecompanyright(company);
	}

	@Override
	public List<Position> select_position(Map map) {
		// TODO Auto-generated method stub
		return companyhomeDao.select_position(map);
	}

}
