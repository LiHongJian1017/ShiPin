package com.shipin.service;

import java.util.List;
import java.util.Map;

import com.shipin.pojo.Company;
import com.shipin.pojo.Position;

public interface CompanyhomeService {

	void updatecompanyceo(Map map);

	Company companyAll(int companyid);

	void uploadlogo(Company company);

	void updatetags(Company company);

	void updatecompanytop(Company company);

	void updatecompanyintroduce(Company company);

	void updatecompanyright(Company company);

	List<Position> select_position(Map map);
	
}
