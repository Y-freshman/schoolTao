package com.schoolTao.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.schoolTao.dao.UserMapper;
import com.schoolTao.pojo.UserExample;

@Service
public class UserService {

	@Autowired
	UserMapper userMapper;
	
	public void get(){
		UserExample userExample = new UserExample();
		userExample.createCriteria().andUserPasswordEqualTo("123456").andUserNameEqualTo("123");
		userMapper.selectByExample(userExample);
	}
	
}
