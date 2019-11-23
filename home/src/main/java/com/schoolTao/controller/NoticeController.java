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

import com.schoolTao.pojo.Notice;
import com.schoolTao.service.NoticeService;

@Controller
@RequestMapping("/notice" )
public class NoticeController {
	
	@Autowired
	NoticeService noticeService;
	
			//插入通知
			@RequestMapping(value = "/insert.do")
			@ResponseBody
			public  Map<String, Object> insert(HttpServletRequest request,HttpServletResponse response,@RequestBody Map<String,String> Data ) throws IOException, ParseException{
						request.setCharacterEncoding("utf-8");
						response.setContentType("application/json;charset=utf-8");
						String noticeContent = Data.get("noticeContent");
						String noticePics = Data.get("noticePics");
						int userId = Integer.parseInt(Data.get("userId"));
						Date noticeTime  = new Date();
						SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd :HH:mm:ss");
				        Notice notice = new Notice();
				        notice.setNoticeContent(noticeContent);
				        
				        notice.setNoticeTime(dateFormat.parse(dateFormat.format(noticeTime)));
				        int i = noticeService.InsertNotice(notice);
						Map<String, Object>map = new HashMap<String, Object>();
						map.put("i",i);
						return map;
			}
			
			//查询公告
			@RequestMapping(value = "/selectGg.do")
			@ResponseBody
			public  Map<String, Object> select(HttpServletRequest request,HttpServletResponse response,@RequestBody Map<String,String> Data ) throws IOException, ParseException{
				request.setCharacterEncoding("utf-8");
				response.setContentType("application/json;charset=utf-8");
				List<Notice> noticelist = noticeService.SelectNotice();
				Map<String, Object>map = new HashMap<String, Object>();
				map.put("list",noticelist);
				return map;
			}
		
}
