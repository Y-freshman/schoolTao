package com.schoolTao.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.schoolTao.dao.GoodsMapper;
import com.schoolTao.dao.UserMapper;
import com.schoolTao.pojo.Goods;
import com.schoolTao.pojo.GoodsExample;
import com.schoolTao.pojo.Need;
import com.schoolTao.pojo.User;
import com.schoolTao.pojo.UserExample;

@Service
public class UserService {

	@Autowired
	UserMapper userMapper;
	
	public User loginUser(String root){
		UserExample userExample = new UserExample();
		userExample.createCriteria().andUserNameEqualTo(root);
		User user = new User();
		if(userMapper.selectByExample(userExample).size() == 0){
			System.out.println(userMapper.selectByExample(userExample).size());
			user = null;
		}else{
			user = userMapper.selectByExample(userExample).get(0);
		}
		return user;
	}
	
	public void registerUser(User user){
		userMapper.insertSelective(user);
	}
	
	public String resetUser(User user){
		UserExample userExample = new UserExample();
		userExample.createCriteria().andUserNameEqualTo(user.getUserName()).andUserMibaoEqualTo(user.getUserMibao()).andUserAnswerEqualTo(user.getUserAnswer());
		String code;
		if(userMapper.selectByExample(userExample).size() == 0){
			code = "500";
		}else{
			userMapper.updateByExampleSelective(user,userExample);
			code = "200";
		}
		return code;
	}
	
}
