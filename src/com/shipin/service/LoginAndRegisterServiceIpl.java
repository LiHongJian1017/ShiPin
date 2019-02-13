package com.shipin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shipin.dao.LoginAndRegisterDao;
import com.shipin.pojo.Company;
import com.shipin.pojo.Jianli;
import com.shipin.pojo.User;

@Service
public class LoginAndRegisterServiceIpl implements LoginAndRegisterService{
	
	@Autowired
	private LoginAndRegisterDao loginAndRegisterDao;

	@Override
	public User checkuser(String username) {
		// TODO Auto-generated method stub
		return loginAndRegisterDao.checkuser(username);
	}

	@Override
	public void adduser(User user) {
		// TODO Auto-generated method stub
		loginAndRegisterDao.adduser(user);
	}

	@Override
	public void addjianli(Jianli jianli) {
		// TODO Auto-generated method stub
		loginAndRegisterDao.addjianli(jianli);
	}

	@Override
	public void addcompany(Integer userid) {
		// TODO Auto-generated method stub
		loginAndRegisterDao.addcompany(userid);
	}

	@Override
	public User check(User user) {
		// TODO Auto-generated method stub
		return loginAndRegisterDao.check(user);
	}

	@Override
	public Company company(Integer userid) {
		// TODO Auto-generated method stub
		return loginAndRegisterDao.company(userid);
	}


	
}
