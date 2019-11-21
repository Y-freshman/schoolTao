package com.schoolTao.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.schoolTao.dao.CommentMapper;
import com.schoolTao.dao.NeedMapper;
import com.schoolTao.dao.CommentMapper;
import com.schoolTao.pojo.Comment;
import com.schoolTao.pojo.Comment;
import com.schoolTao.pojo.CommentExample;

@Service
public class CommentService {

	@Autowired
	CommentMapper commentMapper;
	@Autowired
	NeedMapper needMapper;

	public int InsertComment(Comment comment,Integer needId) {
		// TODO Auto-generated method stub
		int i = commentMapper.insertSelective(comment);//插入，可部分插入
		needMapper.incNum(needId);
		return i;
	}
	
	public void UpdateComment(int commentId) {
		commentMapper.incNum(commentId);
	}
	
	public List<Comment> SelectComment(int i) {
		// TODO Auto-generated method stub
		//CommentExample commentExample = new CommentExample();
		return commentMapper.selectCommentAndUser(i);
	}
	
	
	
}
