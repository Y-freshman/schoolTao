package com.schoolTao.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/upload" )
public class UploadController {
			//
			@RequestMapping(value = "/insert.do")
			@ResponseBody
			public  Map<String, Object> insert(HttpServletRequest request,HttpServletResponse response,@RequestBody Map<String,String> Data ) throws IOException{
				request.setCharacterEncoding("utf-8");
				response.setContentType("application/json;charset=utf-8");
				
				Map<String, Object>map = new HashMap<String, Object>();
				map.put("datas",1);
				return map;
				
			}
		
}
