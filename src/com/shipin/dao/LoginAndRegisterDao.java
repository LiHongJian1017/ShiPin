package com.shipin.dao;

import com.shipin.pojo.Company;
import com.shipin.pojo.Jianli;
import com.shipin.pojo.User;

public interface LoginAndRegisterDao {

	User checkuser(String username);

	void adduser(User user);

	void addjianli(Jianli jianli);

	void addcompany(Integer userid);

	User check(User user);

	Company company(Integer userid);


}
