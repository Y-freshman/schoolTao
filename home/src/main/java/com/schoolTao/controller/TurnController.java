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

import com.schoolTao.pojo.Turn;
import com.schoolTao.service.TurnService;

@Controller
@RequestMapping("/turn" )
public class TurnController {
	
	@Autowired
	TurnService turnService;
	
			//插入轮播图
			@RequestMapping(value = "/insert.do")
			@ResponseBody
			public  Map<String, Object> insert(HttpServletRequest request,HttpServletResponse response,@RequestBody Map<String,String> Data ) throws IOException, ParseException{
						request.setCharacterEncoding("utf-8");
						response.setContentType("application/json;charset=utf-8");
						String turnContent = Data.get("turnContent");
						String turnPics = Data.get("turnPics");
						int userId = Integer.parseInt(Data.get("userId"));
						Date turnTime  = new Date();
						SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd :HH:mm:ss");
				        Turn turn = new Turn();
				        turn.setTurnContent(turnContent);
				        
				        turn.setTurnTime(dateFormat.parse(dateFormat.format(turnTime)));
				        int i = turnService.InsertTurn(turn);
						Map<String, Object>map = new HashMap<String, Object>();
						map.put("i",i);
						return map;
			}
			
			//查询轮播图
			@RequestMapping(value = "/select.do")
			@ResponseBody
			public  Map<String, Object> select(HttpServletRequest request,HttpServletResponse response,@RequestBody Map<String,String> Data ) throws IOException, ParseException{
				request.setCharacterEncoding("utf-8");
				response.setContentType("application/json;charset=utf-8");
				List<Turn> turnlist = turnService.SelectTurn();
				Map<String, Object>map = new HashMap<String, Object>();
				map.put("list",turnlist);
				return map;
			}
		
}
