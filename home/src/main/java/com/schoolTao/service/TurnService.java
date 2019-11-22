package com.schoolTao.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.schoolTao.dao.TurnMapper;
import com.schoolTao.pojo.Turn;
import com.schoolTao.pojo.TurnExample;

@Service
public class TurnService {

	@Autowired
	TurnMapper turnMapper;

	public int InsertTurn(Turn turn) {
		// TODO Auto-generated method stub
		int i = turnMapper.insertSelective(turn);//插入，可部分插入
		return i;
	}
	

	public List<Turn> SelectTurn() {
		
		
		List<Turn> turnlist = turnMapper.selectByExample(null);
		
		return turnlist;
	}
	
	
	
}
