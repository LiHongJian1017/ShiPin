package com.shipin.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shipin.dao.CompanyDeliveryDao;
import com.shipin.pojo.Delivery;

@Service
public class CompanyDeliveryServiceIpl implements CompanyDeliveryService{

	@Autowired
	private CompanyDeliveryDao companyDeliveryDao;
	@Override
	public List<Delivery> delivery(Map<String, String> map) {
		// TODO Auto-generated method stub
		return companyDeliveryDao.delivery(map);
	}
	@Override
	public int count(Map<String, String> map) {
		// TODO Auto-generated method stub
		return companyDeliveryDao.count(map);
	}
	@Override
	public void deliverystatus(Map<String, String> map) {
		// TODO Auto-generated method stub
		companyDeliveryDao.deliverystatus(map);
	}
	@Override
	public List<Delivery> deliverytiaojian(Map<String, String> map) {
		// TODO Auto-generated method stub
		return companyDeliveryDao.deliverytiaojian(map);
	}
	@Override
	public Delivery auditpreview(int deliveryid) {
		// TODO Auto-generated method stub
		return companyDeliveryDao.auditpreview(deliveryid);
	}
	@Override
	public int counttiaojian(Map map) {
		// TODO Auto-generated method stub
		return companyDeliveryDao.counttiaojian(map);
	}

}
