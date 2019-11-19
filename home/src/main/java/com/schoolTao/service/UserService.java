package com.schoolTao.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.schoolTao.dao.UserMapper;
import com.schoolTao.pojo.User;
import com.schoolTao.pojo.UserExample;

@Service
public class UserService {

	@Autowired
	UserMapper userMapper;
	
	public User get(){
		UserExample userExample = new UserExample();
		userExample.createCriteria().andUserPasswordEqualTo("123456");
		return userMapper.selectByExample(userExample).get(0);
	}
	
}
