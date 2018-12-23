package com.shipin.service;

import java.util.Map;

import com.shipin.pojo.Delivery;
import com.shipin.pojo.Jianli;

public interface JianliService {

	Jianli jianli(int userid);

	void uploadjianli(Jianli jianli);

	Delivery selectdelivert(Map map);

	void delivery(Delivery delivery);

}
