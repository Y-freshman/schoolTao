package com.schoolTao.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.schoolTao.dto.OrderDTO;
import com.schoolTao.pojo.Cart;
import com.schoolTao.pojo.Goods;
import com.schoolTao.pojo.Order;
import com.schoolTao.service.CartService;
import com.schoolTao.service.OrderService;

@Controller
@RequestMapping("/order")
public class OrderController {

	@Autowired
	OrderService orderService;
	@Autowired
	CartService cartService;
	
	/**
	 * 查询所有
	 * @param data
	 * @return
	 */
	@PostMapping("select.do")
	@ResponseBody
	public Map<String, Object>getAllMain(@RequestBody Map<String, Object> data){
		Map<String, Object> map = new HashMap<String, Object>();
		Integer userId = (Integer) data.get("userId");
		List<OrderDTO>list = orderService.getAll(userId);
		map.put("orders", list);
		return map;
	}
	
	/**
	 * 查询待收货以及待付款
	 * @param data
	 * @return
	 */
	@PostMapping("selectNeed.do")
	@ResponseBody
	public Map<String, Object>getAllNeed(@RequestBody Map<String, Object> data){
		Map<String, Object> map = new HashMap<String, Object>();
		Integer userId = (Integer) data.get("userId");
		String orderState = String.valueOf(data.get("orderState"));
		List<OrderDTO>list = orderService.getAllNeed(userId,orderState);
		map.put("orders", list);
		return map;
	}
	
	/**
	 * 确认收货
	 * @param data
	 * @return
	 */
	@PostMapping("confirm.do")
	@ResponseBody
	public Map<String, Object>confirm(@RequestBody Map<String, Object> data){
		Map<String, Object> map = new HashMap<String, Object>();
		Integer orderId = (Integer) data.get("orderId");
		orderService.confirm(orderId);
		map.put("code", 200);
		return map;
	}
	
	/**
	 * 添加订单
	 * @param data
	 * @return
	 * @throws ParseException
	 */
	@PostMapping("addOrders.do")
	@ResponseBody
	public Map<String, Object>addOrders(@RequestBody Map<String, Object> data) throws ParseException{
		Map<String, Object> map = new HashMap<String, Object>();
		List<Integer>gdsList = (List<Integer>) data.get("gdsList");
		List<Cart>carts = cartService.getInfo(gdsList);
		Date time = new Date();
		SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd :HH:mm:ss");
		Date orderTime = dateFormat.parse(dateFormat.format(time));
		for(Cart cart:carts){
			Order order = new Order();
			order.setOrderTime(orderTime);
			order.setGoodsId(cart.getGoodsId());
			order.setUserId(cart.getUserId());
			order.setOrderState("1");
			order.setOrderNum(cart.getCartGoodsNum());
			orderService.addorder(order);
		}
		/*orderService.addOrders(gdsList);*/
		map.put("code", 200);
		return map;
	}
	
}
