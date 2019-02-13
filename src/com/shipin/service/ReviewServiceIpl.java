package com.shipin.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shipin.dao.ReviewDao;
import com.shipin.pojo.Certification;
import com.shipin.pojo.Position;
@Service
public class ReviewServiceIpl implements ReviewService{

	@Autowired
	private ReviewDao reviewDao;
	@Override
	public List<Certification> allCertification(Map map) {
		// TODO Auto-generated method stub
		return reviewDao.allCertification(map);
	}
	@Override
	public int countCertification(Map map) {
		// TODO Auto-generated method stub
		return reviewDao.countCertification(map);
	}
	@Override
	public Certification Certification(Map map) {
		// TODO Auto-generated method stub
		return reviewDao.Certification(map);
	}
	@Override
	public void tuihuiCertification(Map map) {
		// TODO Auto-generated method stub
		reviewDao.tuihuiCertification(map);
	}
	@Override
	public void tongguoCertification(Map map) {
		// TODO Auto-generated method stub
		reviewDao.tongguoCertification(map);
	}
	@Override
	public void updatejianli(Map newmap) {
		// TODO Auto-generated method stub
		reviewDao.updatejianli(newmap);
	}
	@Override
	public void updatepassword(Map map) {
		// TODO Auto-generated method stub
		reviewDao.updatepassword(map);
	}
	@Override
	public List<Position> selectPosition(Map map) {
		// TODO Auto-generated method stub
		return reviewDao.selectPosition(map);
	}
	@Override
	public int countPosition(Map map) {
		// TODO Auto-generated method stub
		return reviewDao.countPosition(map);
	}
	@Override
	public void setnumber(Map map) {
		// TODO Auto-generated method stub
		reviewDao.setnumber(map);
	}
	@Override
	public Double getchart(Map map1) {
		// TODO Auto-generated method stub
		return reviewDao.getchart(map1);
	}


}
