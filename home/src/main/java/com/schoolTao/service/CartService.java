package com.schoolTao.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.schoolTao.dao.CartMapper;
import com.schoolTao.pojo.Cart;
import com.schoolTao.pojo.Goods;

@Service
public class CartService {

	@Autowired
	CartMapper cartMapper;

	public void adCart(Map<String, Object> cartMap) throws ParseException {
		// TODO Auto-generated method stub
		Cart cart = new Cart();
		Date cartTime = new Date();
		SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd :hh:mm:ss");
		cart.setCartTime(dateFormat.parse(dateFormat.format(cartTime)));
		cart.setGoodsId(Integer.parseInt(cartMap.get("goodsId").toString()));
		cart.setUserId(Integer.parseInt(cartMap.get("userId").toString()));
		cartMapper.insertSelective(cart);
	}
	
	
	
}
