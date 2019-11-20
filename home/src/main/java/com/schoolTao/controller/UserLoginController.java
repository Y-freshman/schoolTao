package com.schoolTao.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.schoolTao.pojo.User;
import com.schoolTao.service.UserService;

@Controller

public class UserLoginController {
	
	@Autowired
	UserService userService;
	
	/*@GetMapping("/logins.do")
	@ResponseBody
	public Map<String,Object> get(){
		Map<String,Object> map = new HashMap();
		User user = userService.get();
		map.put("user", user);
		return map;
	}*/
	
	@PostMapping("/logins.do")
	@ResponseBody
	public Map<String,Object> get(@RequestBody Map<String,Object> data){
		Map<String,Object> map = new HashMap();
		User user = new User();
		map.put("user", user);
		
		user.setUserName((String) data.get("root"));
		user.setUserPassword((String) data.get("password"));
		
		System.out.println(user.getUserName());
		System.out.println(user.getUserPassword());
		
		return map;
		
	}
	
}
