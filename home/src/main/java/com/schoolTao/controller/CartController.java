package com.schoolTao.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.schoolTao.dto.CartDTO;
import com.schoolTao.pojo.Cart;
import com.schoolTao.service.CartService;

@Controller
@RequestMapping("/cart")
public class CartController {

	@Autowired
	CartService cartService;
	
	@PostMapping("/select.do")
	@ResponseBody
	public List<CartDTO> getAll(@RequestBody Map<String, Object> data){
		Map<String, Object> map = new HashMap<String, Object>();
		List<CartDTO> list = cartService.getAll(Integer.parseInt(data.get("userId").toString()));
		return list;
	}
	
	@PostMapping("/delete.do")
	@ResponseBody
	public void delete(@RequestBody Map<String, Object> data){
		Integer cartId = Integer.parseInt(data.get("cartId").toString());
		cartService.delete(cartId);
	}
	
}
