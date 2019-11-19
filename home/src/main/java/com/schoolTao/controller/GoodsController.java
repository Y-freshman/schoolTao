package com.schoolTao.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.schoolTao.pojo.Goods;
import com.schoolTao.service.GoodsService;

@Controller
public class GoodsController {
	
	@Autowired
	GoodsService goodsService;
	
	@GetMapping("/{goodsId}")
	@ResponseBody
	public Map<String, Object> goodsDetail(@PathVariable(value="goodsId")Integer goodsId){
		Map<String, Object>map = new HashMap<String, Object>();
		Goods goods = goodsService.getOne(goodsId);
		map.put("goods", goods);
		return map;
	}

}
