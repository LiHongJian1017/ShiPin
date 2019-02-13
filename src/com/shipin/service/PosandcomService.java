package com.shipin.service;

import java.util.List;
import java.util.Map;

import com.shipin.pojo.Collection;
import com.shipin.pojo.Company;
import com.shipin.pojo.Lianheposition;
import com.shipin.pojo.Posandcom;
import com.shipin.pojo.Position;

public interface PosandcomService {

	List<Posandcom> selectordertime();

	List<Posandcom> selectordernumber();

	Position selectposition(int positionid);

	Company selectcompany(int companyid);

	Collection selectcollection(Map map);

	List<Lianheposition> selectlianheposition(int companyid);

	List<Position> select_position(int companyid);

	void collection(Map map);

	void concelcollection(Map map);

	List<Posandcom> selectjob(Map map);

	int selectjobcount(Map map);

	void addone(int positionid);

	List<Company> selectcompanyall(Map map);

	int selectcompanycount(Map map);

	List<Position> selectremen();

	List<Posandcom> selectcollections(int userid);

	List<Posandcom> mlistjob(Map map);

	int mlistjobcount(Map map);

	List<Posandcom> mlistjobright(Map newmap);


}
