package com.schoolTao.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.schoolTao.dto.RemainDTO;
import com.schoolTao.service.RemainService;

@Controller
@RequestMapping("/remain")
public class RemainController {

	@Autowired
	RemainService remainService;
	
	/**
	 * 查询所有主留言
	 * @param data
	 * @return
	 */
	@PostMapping("selectMain.do")
	@ResponseBody
	public Map<String, Object>getAllMain(@RequestBody Map<String, Object> data){
		Map<String, Object> map = new HashMap<String, Object>();
		Integer receiverId = (Integer) data.get("receiverId");
		List<RemainDTO>list = remainService.getAll(receiverId);
		map.put("remains", list);
		return map;
	}
	
	/**
	 * 查询某个主留言的所有子留言
	 * @param data
	 * @return
	 */
	@PostMapping("selectSub.do")
	@ResponseBody
	public Map<String, Object>getMainSub(@RequestBody Map<String, Object> data){
		Map<String, Object> map = new HashMap<String, Object>();
		Integer lastId = (Integer) data.get("lastId");
		List<RemainDTO>list = remainService.getMainSub(lastId);
		map.put("remains", list);
		return map;
	}
	
}
