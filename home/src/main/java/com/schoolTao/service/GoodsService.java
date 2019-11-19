package com.schoolTao.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.schoolTao.dao.GoodsMapper;
import com.schoolTao.pojo.Goods;

@Service
public class GoodsService {
	@Autowired
	GoodsMapper goodsMapper;

	public Goods getOne(Integer goodsId) {
		// TODO Auto-generated method stub
		return goodsMapper.selectByPrimaryKey(goodsId);
	}
	
	
}
