package com.schoolTao.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
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
	 * 搜索商品
	 * @param data 需要查询的商品条件
	 * @return 该条件商品信息
	 */
	@PostMapping("/search.do")
	@ResponseBody
	public Map<String, Object> search(@RequestBody Map<String,String> data){
		Map<String, Object>map = new HashMap<String, Object>();
		String goodsName = data.get("search");
		Goods goods = new Goods();
		goods.setGoodsName(goodsName);
		List<Goods> goodslist = goodsService.getName(goods);
		map.put("list", goodslist);
		return map;
	}
	
	/**
	 * 对应种类商品页面
	 * @param data 需要查询的商品条件
	 * @return 该条件商品信息
	 */
	@PostMapping("/selectTypePage.do")
	@ResponseBody
	public Map<String, Object> selectTypePage(@RequestBody Map<String,String> data){
		Map<String, Object>map = new HashMap<String, Object>();
		String goodsType = data.get("goodsType");
		Goods goods = new Goods();
		goods.setGoodsType(goodsType);
		List<Goods> goodslist = goodsService.getTypePage(goods);
		map.put("list", goodslist);
		return map;
	}
	
	/**
	 * 查询热门商品详情
	 * @param data 不需要查询的商品条件
	 * @return 热门商品信息
	 */
	@PostMapping("/selectByView.do")
	@ResponseBody
	public Map<String, Object> selectByView(@RequestBody Map<String,String> data){
		Map<String, Object>map = new HashMap<String, Object>();
		List<Goods> goods = goodsService.getHot();
		map.put("list", goods);
		return map;
	}
	
	/**
	 * 查询各种类商品详情
	 * @param data 需要查询的商品条件
	 * @return 对应种类商品信息
	 */
	@PostMapping("/selectByType.do")
	@ResponseBody
	public Map<String, Object> selectByType(@RequestBody Map<String,String> data){
		Map<String, Object>map = new HashMap<String, Object>();
		String goodsType = data.get("goodsType");
		Goods goods = new Goods();
		goods.setGoodsType(goodsType);
		List<Goods> goodslist = goodsService.getType(goods);
		map.put("list", goodslist);
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
	
	/**
	 * 商品浏览数加一
	 * @param data
	 * @return
	 */
	@PostMapping("/incView.do")
	@ResponseBody
	public Map<String, Object> incView(@RequestBody Map<String,String> data){
		Map<String, Object>map = new HashMap<String, Object>();
		Integer goodsId = Integer.parseInt(data.get("goodsId"));
		goodsService.incView(goodsId);
		map.put("code", 200);
		return map;
	}

	/**
	 * 发布商品
	 */
	@PostMapping("/InsertGoods.do")
	@ResponseBody
	public Map<String, Object> InsertGoods(@RequestBody Map<String,String> data) throws ParseException{
		Map<String, Object>map = new HashMap<String, Object>();
		String goodsName = data.get("goodsName");
		Integer goodsCounterPrice = Integer.parseInt(data.get("goodsCounterPrice"));
		Integer goodsRetailPrice = Integer.parseInt(data.get("goodsRetailPrice"));
		Byte goodsIsnew =	Byte.parseByte(data.get("goodsIsnew").toString());
		String goodsClassfy = data.get("goodsClassfy");
		String goodsPicUrl = data.get("goodsPicUrl").toString();
		Integer goodsNum = Integer.parseInt(data.get("goodsNum"));
		String goodsSealname = data.get("goodsSealname");
		String goodsPhone = data.get("goodsPhone");
		
		Date now = new Date(); 
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");//可以方便地修改日期格式
		Date datetime = dateFormat.parse(dateFormat.format( now )); 
		
		Goods goods = new Goods();
		goods.setUserId(1);
		goods.setGoodsName(goodsName);
		goods.setGoodsOldPrice(goodsCounterPrice);
		goods.setGoodsNewPrice(goodsRetailPrice);
		goods.setGoodsFresh(goodsIsnew);
		goods.setGoodsType(goodsClassfy);
		goods.setGoodsPics(goodsPicUrl);
		goods.setGoodsNum(goodsNum);
		goods.setGoodsUserName(goodsSealname);
		goods.setGoodsUserPhone(goodsPhone);
		goods.setGoodsTime(datetime);
		goodsService.InsertGoods(goods);
		map.put("goods", goods);
 		return map;
	}
	
	/**
	 * 猜你喜欢
	 * @param data
	 * @return
	 */
	@PostMapping("/maylike.do")
	@ResponseBody
	public Map<String,Object> maylike(@RequestBody Map<String,Object> data){
		Map<String,Object> map = new HashMap();
		List<Goods> likegood = goodsService.maylike();
		map.put("list", likegood);
		return map;
	}
	
}
