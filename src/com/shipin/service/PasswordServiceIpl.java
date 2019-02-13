package com.shipin.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shipin.dao.PasswordDao;
import com.shipin.pojo.User;

@Service
public class PasswordServiceIpl implements PasswordService{

	@Autowired
	private PasswordDao passwordDao;
	@Override
	public User selectuser(Map map) {
		// TODO Auto-generated method stub
		return passwordDao.selectuser(map);
	}
	@Override
	public void updatepassword(Map map) {
		// TODO Auto-generated method stub
		passwordDao.updatepassword(map);
	}
	@Override
	public User selectuser1(Map map) {
		// TODO Auto-generated method stub
		return passwordDao.selectuser1(map);
	}

}
