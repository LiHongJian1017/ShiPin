package com.shipin.service;

import com.shipin.pojo.Certification;

public interface UserCertificationService {

	Certification certification(int userid);

	void addcertification(Certification certification);

	void updatecertification(Certification certification);

}
