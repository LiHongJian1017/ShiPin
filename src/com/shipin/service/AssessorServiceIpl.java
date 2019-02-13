package com.shipin.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shipin.dao.AssessorDao;
import com.shipin.pojo.User;
import com.sun.accessibility.internal.resources.accessibility;

@Service
public class AssessorServiceIpl implements AssessorService{

	@Autowired
	private AssessorDao assessorDao;

	@Override
	public List<User> selectAssessor(Map map) {
		// TODO Auto-generated method stub
		return assessorDao.selectAssessor(map);
	}

	@Override
	public int selectCountAssessor(Map map) {
		// TODO Auto-generated method stub
		return assessorDao.selectCountAssessor(map);
	}

	@Override
	public User userdetail(Map map) {
		// TODO Auto-generated method stub
		return assessorDao.userdetail(map);
	}

	@Override
	public void updatestatus(Map map) {
		// TODO Auto-generated method stub
		assessorDao.updatestatus(map);
	}

	@Override
	public void update(Map map) {
		// TODO Auto-generated method stub
		assessorDao.update(map);
	}

	@Override
	public void deleteassessor(Map map) {
		// TODO Auto-generated method stub
		assessorDao.deleteassessor(map);
	}

	@Override
	public User checkassessor(Map map) {
		// TODO Auto-generated method stub
		return assessorDao.checkassessor(map);
	}

	@Override
	public void addassessor(Map newmap) {
		// TODO Auto-generated method stub
		assessorDao.addassessor(newmap);
	}


}
