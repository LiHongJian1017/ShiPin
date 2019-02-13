package com.shipin.dao;

import java.util.List;
import java.util.Map;

import com.shipin.pojo.Jianli;
import com.shipin.pojo.Position;

public interface CompanyPositionDao {

	public void add_Position(Position position);

	public List<Position> select_YNposition(Map map);

	public void offlineposition(Map map);

	public void deleteposition(Map map);

	public int count(Map map);

	public Position getpositiondetail(Map map);

	public void edit_Position(Position position);

	public void add_lianhePosition(Position position);

	public List<Position> select_YNlianheposition(Map map);

	public int lianhecount(Map map);

	public void offlinelianheposition(Map<String, String> map);

	public void deletelianheposition(Map<String, String> map);

	public List<Position> select_klianheposition(Map map);

	public int klianhecount(Map map);

	public Position selectposition(int positionid);

	public List<Jianli> selectjianli(Map map);

	public int kjianlicount(Map map);
	
	
}
