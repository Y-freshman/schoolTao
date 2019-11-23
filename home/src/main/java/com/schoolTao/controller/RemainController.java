package com.schoolTao.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
import com.schoolTao.pojo.Remain;
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
	
	/**
	 * 删除某个主留言或者主留言中的某个子留言
	 * @param data
	 * @return
	 */
	@PostMapping("/deleteItem.do")
	@ResponseBody
	public Map<String, Object>deleteSubItem(@RequestBody Map<String, Object> data){
		Map<String, Object> map = new HashMap<String, Object>();
		Integer remainId = (Integer) data.get("remainId");
		remainService.deleteItem(remainId);
		map.put("code", 200);
		return map;
	}
	
	/**
	 * 添加留言
	 * @param data
	 * @return
	 * @throws ParseException
	 */
	@PostMapping("/addItem.do")
	@ResponseBody
	public Map<String, Object>addItem(@RequestBody Map<String, Object> data) throws ParseException{
		Map<String, Object> map = new HashMap<String, Object>();
		Remain remain = new Remain();
		Integer receiverId = (Integer) data.get("receiverId");
		Integer remainerId = (Integer) data.get("remainerId");
		Integer remianLastId = (Integer) data.get("remianLastId");
		String remainContent = data.get("remainContent").toString();
		Date addTime = new Date();
		SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd :HH:mm:ss");
		remain.setRemainTime(dateFormat.parse(dateFormat.format(addTime)));
		remain.setUserId(remainerId);
		remain.setRemainToId(receiverId);
		remain.setRemianLastId(remianLastId);
		remain.setRemainContent(remainContent);
		remainService.addItem(remain);
		map.put("code", 200);
		return map;
	}
	
}
