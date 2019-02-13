package com.shipin.service;

import java.util.Map;

import com.shipin.pojo.User;

public interface PasswordService {

	User selectuser(Map map);

	void updatepassword(Map map);

	User selectuser1(Map map);

}
