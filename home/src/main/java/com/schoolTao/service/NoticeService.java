package com.schoolTao.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.schoolTao.dao.NoticeMapper;
import com.schoolTao.pojo.Notice;
import com.schoolTao.pojo.NoticeExample;

@Service
public class NoticeService {

	@Autowired
	NoticeMapper noticeMapper;

	public int InsertNotice(Notice notice) {
		// TODO Auto-generated method stub
		int i = noticeMapper.insertSelective(notice);//插入，可部分插入
		return i;
	}
	

	public List<Notice> SelectNotice() {
		NoticeExample noti = new NoticeExample();
		noti.createCriteria().andNoticeTypeEqualTo("0");
		List<Notice> noticelist = noticeMapper.selectByExample(noti);
		
		return noticelist;
	}
	
	
	
}
