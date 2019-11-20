package com.schoolTao.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.schoolTao.dao.UserMapper;
import com.schoolTao.pojo.User;
import com.schoolTao.pojo.UserExample;

@Service
public class UserLoginService {
	
	@Autowired
	UserMapper userMapper;
	
	/*public User get(Integer userId){
		return userMapper.selectByPrimaryKey(userId);
	}*/
}
