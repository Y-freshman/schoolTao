package com.schoolTao.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.schoolTao.dao.NeedMapper;
import com.schoolTao.pojo.Need;
import com.schoolTao.pojo.NeedExample;

@Service
public class NeedService {

	@Autowired
	NeedMapper needMapper;

	public int InsertNeed(Need need) {
		// TODO Auto-generated method stub
		int i = needMapper.insertSelective(need);//插入，可部分插入
		return i;
	}
	
	public void UpdateNeed(Need need) {
		// TODO Auto-generated method stub
		NeedExample needExample = new NeedExample();
		needExample.createCriteria().andNeedContentEqualTo(need.getNeedContent());
		needMapper.updateByExampleSelective(need, needExample);//更新
	}
	
	
	
}
