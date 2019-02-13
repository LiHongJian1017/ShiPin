package com.shipin.service;

import java.util.List;
import java.util.Map;

import com.shipin.pojo.Jianli;
import com.shipin.pojo.Position;

public interface CompanyPositionService {


	//添加一条信息
	void add_Position(Position position);

	List<Position> select_YNposition(Map map);

	void offlineposition(Map map);

	void deleteposition(Map map);

	int count(Map map);

	Position getpositiondetail(Map map);

	void edit_Position(Position position);

	void add_lianhePosition(Position position);

	List<Position> select_YNlianheposition(Map map);

	int lianhecount(Map map);

	void offlinelianheposition(Map<String, String> map);

	void deletelianheposition(Map<String, String> map);

	List<Position> select_klianheposition(Map map);

	int klianhecount(Map map);

	Position selectposition(int positionid);

	List<Jianli> selectjianli(Map map);

	int kjianlicount(Map map);
	
}
