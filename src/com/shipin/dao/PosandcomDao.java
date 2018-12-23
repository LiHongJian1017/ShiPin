package com.shipin.dao;

import java.util.List;
import java.util.Map;

import com.shipin.pojo.Collection;
import com.shipin.pojo.Company;
import com.shipin.pojo.Lianheposition;
import com.shipin.pojo.Posandcom;
import com.shipin.pojo.Position;

public interface PosandcomDao {

	public List<Posandcom> selectordertime();

	public List<Posandcom> selectordernumber();

	public Position selectposition(int positionid);

	public Company selectcompany(int companyid);

	public Collection selectcollection(Map map);

	public Lianheposition selectlianheposition(int companyid);

	public List<Position> select_position(int companyid);

	public void collection(Map map);

	public void concelcollection(Map map);

	public List<Posandcom> selectjob(Map map);

	public int selectjobcount(Map map);

	public void addone(int positionid);

	public List<Company> selectcompanyall(Map map);

	public int selectcompanycount(Map map);

	public List<Position> selectremen();
}
