package com.shipin.service;

import java.util.List;
import java.util.Map;

import com.shipin.pojo.Position;

public interface CompanyPositionService {


	//���һ����Ϣ
	void add_Position(Position position);

	List<Position> select_YNposition(Map map);

	void offlineposition(Map map);

	void deleteposition(Map map);

	int count(Map map);

	Position getpositiondetail(Map map);

	void edit_Position(Position position);
	
}
