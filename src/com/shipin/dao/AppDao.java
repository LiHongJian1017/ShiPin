package com.shipin.dao;

import java.util.List;
import java.util.Map;

import com.shipin.pojo.Company;
import com.shipin.pojo.Jianli;
import com.shipin.pojo.Posandcom;
import com.shipin.pojo.Poscom;
import com.shipin.pojo.Position;
import com.shipin.pojo.User;

public interface AppDao {

	List<User> selectuser();

	List<Posandcom> appremenpositions();

	User applogin(Map map);

	List<Posandcom> appjoblist(Map map);

	List<Company> appcompanylist(Map map);

	Company appcompanydetailone(int companyid);

	List<Position> appcompanydetailthree(int companyid);

	Poscom appjobdetail(int positionid);

	Jianli appuserinfo(int userid);

	void appmima(Map map);

}
