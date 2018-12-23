package com.shipin.dao;

import java.util.List;
import java.util.Map;

import com.shipin.pojo.Position;

public interface CompanyPositionDao {

	public void add_Position(Position position);

	public List<Position> select_YNposition(Map map);

	public void offlineposition(Map map);

	public void deleteposition(Map map);

	public int count(Map map);

	public Position getpositiondetail(Map map);

	public void edit_Position(Position position);
	
	
}
