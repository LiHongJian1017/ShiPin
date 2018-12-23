package com.shipin.dao;

import java.util.List;
import java.util.Map;

import com.shipin.pojo.Delivery;

public interface CompanyDeliveryDao {

	List<Delivery> delivery(Map<String, String> map);

	int count(Map<String, String> map);

	void deliverystatus(Map<String, String> map);

	List<Delivery> deliverytiaojian(Map<String, String> map);

	Delivery auditpreview(int deliveryid);

	int counttiaojian(Map map);

}
