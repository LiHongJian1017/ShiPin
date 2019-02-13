package com.shipin.service;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.shipin.dao.CompanyPositionDao;
import com.shipin.pojo.Jianli;
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

	@Override
	public void add_lianhePosition(Position position) {
		// TODO Auto-generated method stub
		companypositionDao.add_lianhePosition(position);
	}

	@Override
	public List<Position> select_YNlianheposition(Map map) {
		// TODO Auto-generated method stub
		return companypositionDao.select_YNlianheposition(map);
	}

	@Override
	public int lianhecount(Map map) {
		// TODO Auto-generated method stub
		return companypositionDao.lianhecount(map);
	}

	@Override
	public void offlinelianheposition(Map<String, String> map) {
		// TODO Auto-generated method stub
		companypositionDao.offlinelianheposition(map);
	}

	@Override
	public void deletelianheposition(Map<String, String> map) {
		// TODO Auto-generated method stub
		companypositionDao.deletelianheposition(map);
	}

	@Override
	public List<Position> select_klianheposition(Map map) {
		// TODO Auto-generated method stub
		return companypositionDao.select_klianheposition(map);
	}

	@Override
	public int klianhecount(Map map) {
		// TODO Auto-generated method stub
		return companypositionDao.klianhecount(map);
	}

	@Override
	public Position selectposition(int positionid) {
		// TODO Auto-generated method stub
		return companypositionDao.selectposition(positionid);
	}

	@Override
	public List<Jianli> selectjianli(Map map) {
		// TODO Auto-generated method stub
		return companypositionDao.selectjianli(map);
	}

	@Override
	public int kjianlicount(Map map) {
		// TODO Auto-generated method stub
		return companypositionDao.kjianlicount(map);
	}

	

	

}
