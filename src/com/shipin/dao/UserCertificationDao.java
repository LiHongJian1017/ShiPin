package com.shipin.dao;

import com.shipin.pojo.Certification;

public interface UserCertificationDao {

	Certification certification(int userid);

	void addcertification(Certification certification);

	void updatecertification(Certification certification);

}
