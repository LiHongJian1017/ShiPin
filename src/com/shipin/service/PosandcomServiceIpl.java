package com.shipin.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shipin.dao.PosandcomDao;
import com.shipin.pojo.Collection;
import com.shipin.pojo.Company;
import com.shipin.pojo.Lianheposition;
import com.shipin.pojo.Posandcom;
import com.shipin.pojo.Position;

@Service
public class PosandcomServiceIpl implements PosandcomService{

	@Autowired
	private PosandcomDao posandcomDao;
	@Override
	public List<Posandcom> selectordertime() {
		// TODO Auto-generated method stub
		return posandcomDao.selectordertime();
	}
	@Override
	public List<Posandcom> selectordernumber() {
		// TODO Auto-generated method stub
		return posandcomDao.selectordernumber();
	}
	@Override
	public Position selectposition(int positionid) {
		// TODO Auto-generated method stub
		return posandcomDao.selectposition(positionid);
	}
	@Override
	public Company selectcompany(int companyid) {
		// TODO Auto-generated method stub
		return posandcomDao.selectcompany(companyid);
	}
	@Override
	public Collection selectcollection(Map map) {
		// TODO Auto-generated method stub
		return posandcomDao.selectcollection(map);
	}
	@Override
	public Lianheposition selectlianheposition(int companyid) {
		// TODO Auto-generated method stub
		return posandcomDao.selectlianheposition(companyid);
	}
	@Override
	public List<Position> select_position(int companyid) {
		// TODO Auto-generated method stub
		return posandcomDao.select_position(companyid);
	}
	@Override
	public void collection(Map map) {
		// TODO Auto-generated method stub
		posandcomDao.collection(map);
	}
	@Override
	public void concelcollection(Map map) {
		// TODO Auto-generated method stub
		posandcomDao.concelcollection(map);
	}
	@Override
	public List<Posandcom> selectjob(Map map) {
		// TODO Auto-generated method stub
		return posandcomDao.selectjob(map);
	}
	@Override
	public int selectjobcount(Map map) {
		// TODO Auto-generated method stub
		return posandcomDao.selectjobcount(map);
	}
	@Override
	public void addone(int positionid) {
		// TODO Auto-generated method stub
		posandcomDao.addone(positionid);
	}
	@Override
	public List<Company> selectcompanyall(Map map) {
		// TODO Auto-generated method stub
		return posandcomDao.selectcompanyall(map);
	}
	@Override
	public int selectcompanycount(Map map) {
		// TODO Auto-generated method stub
		return posandcomDao.selectcompanycount(map);
	}
	@Override
	public List<Position> selectremen() {
		// TODO Auto-generated method stub
		return posandcomDao.selectremen();
	}

}
