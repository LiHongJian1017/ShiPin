package com.shipin.dao;

import java.util.List;
import java.util.Map;

import com.shipin.pojo.Delivery;
import com.shipin.pojo.Posandcomanddel;

public interface UserDeliveryDao {

	List<Posandcomanddel> delivery(Map map);

	Delivery deliverypreview(int deliveryid);

}
