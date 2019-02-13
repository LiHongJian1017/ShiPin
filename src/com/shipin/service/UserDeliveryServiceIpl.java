package com.shipin.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shipin.dao.UserDeliveryDao;
import com.shipin.dao.UserjianliDao;
import com.shipin.pojo.Delivery;
import com.shipin.pojo.Posandcomanddel;

@Service
public class UserDeliveryServiceIpl implements UserDeliveryService{

	@Autowired
	private UserDeliveryDao userDeliveryDao;
	@Override
	public List<Posandcomanddel> delivery(Map map) {
		// TODO Auto-generated method stub
		return userDeliveryDao.delivery(map);
	}
	@Override
	public Delivery deliverypreview(int deliveryid) {
		// TODO Auto-generated method stub
		return userDeliveryDao.deliverypreview(deliveryid);
	}

}
