package com.schoolTao.controller;

import java.text.ParseException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.schoolTao.pojo.Goods;
import com.schoolTao.service.CartService;
import com.schoolTao.service.GoodsService;

@Controller
@RequestMapping("/gdsDetails")
public class GoodsController {
	
	@Autowired
	GoodsService goodsService;
	
	@Autowired
	CartService cartService;
	
	/**
	 * 查询商品详情
	 * @param data 需要查询的商品条件
	 * @return 该条件商品信息
	 */
	@PostMapping("/gdsDetails.do")
	@ResponseBody
	public Map<String, Object> goodsDetail(@RequestBody Map<String,String> data){
		Map<String, Object>map = new HashMap<String, Object>();
		Goods goods = goodsService.getOne(Integer.parseInt(data.get("gdId")));
		map.put("goods", goods);
		return map;
	}
	
	/**
	 * 添加至购物车
	 * @param data
	 * @return
	 * @throws ParseException
	 */
	@PostMapping("/adCart.do")
	@ResponseBody
	public Map<String, Object> adCart(@RequestBody Map<String,String> data) throws ParseException{
		Map<String, Object>map = new HashMap<String, Object>();
		Map<String, Object>cartMap = new HashMap<String, Object>();
		/*cartMap.put("goodsName", data.get("goodsName"));
		cartMap.put("goodsPrice", Integer.parseInt(data.get("goodsPrice")));
		cartMap.put("goodsPic", data.get("goodsPic"));
		cartMap.put("salerName", data.get("salerName"));
		cartMap.put("descript", Byte.parseByte(data.get("descript")));*/
		cartMap.put("goodsId", Integer.parseInt(data.get("goodsId")));
		cartMap.put("userId", Integer.parseInt(data.get("userId")));
		cartMap.put("goodsNum", Integer.parseInt(data.get("goodsNum")));
		cartService.adCart(cartMap);
		map.put("code", 200);
		return map;
	}

}
