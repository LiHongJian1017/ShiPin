package com.shipin.dao;

import java.util.Map;

import com.shipin.pojo.User;

public interface PasswordDao {

	User selectuser(Map map);

	void updatepassword(Map map);

	User selectuser1(Map map);

}
