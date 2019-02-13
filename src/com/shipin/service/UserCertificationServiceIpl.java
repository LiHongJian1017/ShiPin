package com.shipin.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shipin.dao.UserCertificationDao;
import com.shipin.pojo.Certification;

@Service
public class UserCertificationServiceIpl implements UserCertificationService{

	@Autowired
	private UserCertificationDao userCertificationDao;
	@Override
	public Certification certification(int userid) {
		// TODO Auto-generated method stub
		return userCertificationDao.certification(userid);
	}
	@Override
	public void addcertification(Certification certification) {
		// TODO Auto-generated method stub
		userCertificationDao.addcertification(certification);
	}
	@Override
	public void updatecertification(Certification certification) {
		// TODO Auto-generated method stub
		userCertificationDao.updatecertification(certification);
	}

}
