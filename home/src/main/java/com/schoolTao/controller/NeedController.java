package com.schoolTao.controller;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
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

import com.schoolTao.pojo.Need;
import com.schoolTao.service.NeedService;

@Controller
@RequestMapping("/need" )
public class NeedController {
	
	@Autowired
	NeedService needService;
	
			//
			@RequestMapping(value = "/insert.do")
			@ResponseBody
			public  Map<String, Object> insert(HttpServletRequest request,HttpServletResponse response,@RequestBody Map<String,String> Data ) throws IOException{
						request.setCharacterEncoding("utf-8");
						response.setContentType("application/json;charset=utf-8");
						String needContent = Data.get("needContent");
						String needPics = Data.get("needPics");
						int userId = Integer.parseInt(Data.get("userId"));
						Date needTime  = new Date();
				        Need need = new Need();
				        need.setNeedContent(needContent);
				        need.setNeedPics(needPics);
				        need.setUserId(userId);
				        need.setNeedCommentNum(0);
				        need.setNeedViewNum(0);
				        need.setNeedTime(needTime);
				        int i = needService.InsertNeed(need);
						Map<String, Object>map = new HashMap<String, Object>();
						map.put("i",i);
						return map;
			}
		
}
