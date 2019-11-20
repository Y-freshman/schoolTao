package com.schoolTao.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.schoolTao.dao.NeedMapper;
import com.schoolTao.pojo.Comment;
import com.schoolTao.service.CommentService;
import com.schoolTao.service.CommentService;

@Controller
@RequestMapping("/comment" )
public class CommentController {
	
	@Autowired
	CommentService commentService;
	
	
			//插入评论
			@RequestMapping(value = "/insert.do")
			@ResponseBody
			public  Map<String, Object> insert(HttpServletRequest request,HttpServletResponse response,@RequestBody Map<String,String> Data ) throws IOException, ParseException{
						request.setCharacterEncoding("utf-8");
						response.setContentType("application/json;charset=utf-8");
						String commentContent = Data.get("commentContent");
						int userId = Integer.parseInt(Data.get("userId"));
						int needId = Integer.parseInt(Data.get("needId"));
						Date commentTime  = new Date();
						SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd :HH:mm:ss");
				        Comment comment = new Comment();
				        comment.setCommentContent(commentContent);
				        comment.setCommentLikeNum(0);
				        comment.setNeedId(needId);
				        comment.setUserId(userId);
				        comment.setCommentTime(dateFormat.parse(dateFormat.format(commentTime)));
				        int i = commentService.InsertComment(comment,needId);
						Map<String, Object>map = new HashMap<String, Object>();
						map.put("i",i);
						return map;
			}
			//评论点赞
			@RequestMapping(value = "/update.do")
			@ResponseBody
			public  Map<String, Object> update(HttpServletRequest request,HttpServletResponse response,@RequestBody Map<String,String> Data ) throws IOException, ParseException{
				request.setCharacterEncoding("utf-8");
				response.setContentType("application/json;charset=utf-8");
				int commentId = Integer.parseInt(Data.get("commentId"));
				commentService.UpdateComment(commentId);
				Map<String, Object>map = new HashMap<String, Object>();
				map.put("i",1);
				return map;
			}
			//查询评论
			@RequestMapping(value = "/select.do")
			@ResponseBody
			public  Map<String, Object> select(HttpServletRequest request,HttpServletResponse response,@RequestBody Map<String,String> Data ) throws IOException, ParseException{
				request.setCharacterEncoding("utf-8");
				response.setContentType("application/json;charset=utf-8");
				int needId = Integer.parseInt(Data.get("needId"));
				List<Comment> commentlist = commentService.SelectComment(needId);
				Map<String, Object>map = new HashMap<String, Object>();
				map.put("list",commentlist);
				return map;
			}
		
}
