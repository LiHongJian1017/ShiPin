package com.shipin.dao;

import java.util.List;
import java.util.Map;

import com.shipin.pojo.User;

public interface AssessorDao {

	List<User> selectAssessor(Map map);

	int selectCountAssessor(Map map);

	User userdetail(Map map);

	void updatestatus(Map map);

	void update(Map map);

	void deleteassessor(Map map);

	User checkassessor(Map map);

	void addassessor(Map newmap);

}
