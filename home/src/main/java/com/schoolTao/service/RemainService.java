package com.schoolTao.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.schoolTao.dao.RemainMapper;
import com.schoolTao.dto.RemainDTO;
import com.schoolTao.pojo.Remain;
import com.schoolTao.pojo.RemainExample;

@Service
public class RemainService {

	@Autowired
	RemainMapper remainMapper;

	/**
	 * 查询所有主留言
	 * @param receiverId
	 * @return
	 */
	public List<RemainDTO> getAll(Integer receiverId) {
		// TODO Auto-generated method stub
		List<RemainDTO>remainDTOs = remainMapper.selectAndUser(receiverId);
		return remainDTOs;
	}

	/**
	 * 查询某个主留言的所有子留言
	 * @param lastId
	 * @return
	 */
	public List<RemainDTO> getMainSub(Integer lastId) {
		// TODO Auto-generated method stub
		List<RemainDTO>remainDTOs = remainMapper.selectAndUserSub(lastId);
		return remainDTOs;
	}

	/**
	 * 删除某个主留言或者主留言中的某个子留言
	 * @param remainId
	 */
	public void deleteItem(Integer remainId) {
		// TODO Auto-generated method stub
		remainMapper.deleteByPrimaryKey(remainId);
	}

	/**
	 * 添加留言
	 * @param remain
	 */
	public void addItem(Remain remain) {
		// TODO Auto-generated method stub
		remainMapper.insertSelective(remain);
	}
	
}
