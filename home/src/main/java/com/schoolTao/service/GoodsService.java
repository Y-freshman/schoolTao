package com.schoolTao.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.schoolTao.dao.GoodsMapper;
import com.schoolTao.pojo.Goods;

@Service
public class GoodsService {
	@Autowired
	GoodsMapper goodsMapper;

	/**
	 * 根据id获取商品信息
	 * @param goodsId
	 * @return
	 */
	public Goods getOne(Integer goodsId) {
		// TODO Auto-generated method stub
		return goodsMapper.selectByPrimaryKey(goodsId);
	}
	
	/**
	 * 根据type获取商品信息
	 * @param goodsId
	 * @return
	 */
	public List<Goods> getType(Goods type) {
		// TODO Auto-generated method stub
		return goodsMapper.selectByType(type);
	}
	
	/**
	 * 获取一种商品全部信息
	 * @param 
	 * @return
	 */
	public List<Goods> getTypePage(Goods type) {
		// TODO Auto-generated method stub
		return goodsMapper.selectByType2(type);
	}
	
	/**
	 * 根据name获取商品信息
	 * @param goodsId
	 * @return
	 */
	public List<Goods> getName(Goods type) {
		// TODO Auto-generated method stub
		return goodsMapper.selectByName(type);
	}
	
	/**
	 * 获取热门商品信息
	 * @param 
	 * @return
	 */
	public List<Goods> getHot() {
		// TODO Auto-generated method stub
		return goodsMapper.selectByView(null);
	}
	
	
}
