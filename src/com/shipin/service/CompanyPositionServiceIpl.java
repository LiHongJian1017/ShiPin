package com.shipin.service;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.shipin.dao.CompanyPositionDao;
import com.shipin.pojo.Position;


@Service
public class CompanyPositionServiceIpl implements CompanyPositionService {
	
	@Autowired
	private CompanyPositionDao companypositionDao;

	@Override
	public void add_Position(Position position) {
		// TODO Auto-generated method stub
		companypositionDao.add_Position(position);
	}

	@Override
	public List<Position> select_YNposition(Map map) {
		// TODO Auto-generated method stub
		return companypositionDao.select_YNposition(map);
		
	}

	@Override
	public void offlineposition(Map map) {
		// TODO Auto-generated method stub
		companypositionDao.offlineposition(map);
	}

	@Override
	public void deleteposition(Map map) {
		// TODO Auto-generated method stub
		companypositionDao.deleteposition(map);
	}

	@Override
	public int count(Map map) {
		// TODO Auto-generated method stub
		return companypositionDao.count(map);
	}

	@Override
	public Position getpositiondetail(Map map) {
		// TODO Auto-generated method stub
		return companypositionDao.getpositiondetail(map);
	}

	@Override
	public void edit_Position(Position position) {
		// TODO Auto-generated method stub
		companypositionDao.edit_Position(position);
	}

	

	

}
