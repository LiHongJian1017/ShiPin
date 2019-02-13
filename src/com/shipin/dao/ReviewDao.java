package com.shipin.dao;

import java.util.List;
import java.util.Map;

import com.shipin.pojo.Certification;
import com.shipin.pojo.Position;

public interface ReviewDao {

	List<Certification> allCertification(Map map);

	int countCertification(Map map);

	com.shipin.pojo.Certification Certification(Map map);

	void tuihuiCertification(Map map);

	void tongguoCertification(Map map);

	void updatejianli(Map newmap);

	void updatepassword(Map map);

	List<Position> selectPosition(Map map);

	int countPosition(Map map);

	void setnumber(Map map);

	Double getchart(Map map1);


}
