package com.shipin.service;

import java.util.List;
import java.util.Map;

import com.shipin.pojo.Certification;
import com.shipin.pojo.Position;

public interface ReviewService {

	List<Certification> allCertification(Map map);

	int countCertification(Map map);

	Certification Certification(Map map);

	void tuihuiCertification(Map map);

	void tongguoCertification(Map map);

	void updatejianli(Map newmap);

	void updatepassword(Map map);

	List<Position> selectPosition(Map map);

	int countPosition(Map map);

	void setnumber(Map map);

	Double getchart(Map map1);


}
