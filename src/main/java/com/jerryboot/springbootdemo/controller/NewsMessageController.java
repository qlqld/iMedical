package com.jerryboot.springbootdemo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jerryboot.springbootdemo.model.NewsInfoPage;
import com.jerryboot.springbootdemo.model.NewsMessage;
import com.jerryboot.springbootdemo.service.NewsMessageService;

@Controller
public class NewsMessageController {
	@Autowired
	NewsMessageService newsMsgService;
	
	
	@GetMapping("/newsInfo")
	public String viewNewsInfo(Model model, @RequestParam(value="page", defaultValue = "1") Integer currPage) {
		int perPageAmount = 10; // 每頁10筆
		NewsInfoPage newsInfoPage = newsMsgService.findPageMsgByDateDesc(perPageAmount, currPage);

		model.addAttribute("newsMsgList", newsInfoPage.getNewsMsgList());
		model.addAttribute("totalMsg", newsInfoPage.getTotalMsgNum());
		model.addAttribute("currPage", newsInfoPage.getCurrPage());
		model.addAttribute("totalPage", newsInfoPage.getTotalPage());
		
		return "/newsInfo";
	}
	
	
	@GetMapping("/newsInfoPage")
	public String viewNewsInfoPageById(Model model, @RequestParam(name="id") Integer id) {
		NewsMessage newsMsg = newsMsgService.findNewsMsgById(id);
		model.addAttribute("newsMsg", newsMsg);
		return "/newsInfoPage";
	}
	
	@GetMapping("/Backstage/viewNewsMessage")
	public String viewNewsInfoByPage(Model model, @RequestParam(value="page", defaultValue = "1") Integer p) {
		//NewsMessage newsMsg = newsMsgService.findPageMsgById(p);
		//model.addAttribute("newsMsg", newsMsg);
		return "/Backstage/jsp/viewNewsMessage";
	}
	
	@GetMapping("/Backstage/editNewsMessage/{id}")
	public String editNewsMsg(Model model, @PathParam(value="id") Integer id) {
		NewsMessage newsMsg = newsMsgService.findNewsMsgById(id);
		model.addAttribute("newsMsg", newsMsg);
		return "/Backstage/jsp/editNewsMessage";
	}
	
	@PostMapping("/Backstage/editNewsMessage")
	public String editNewsMsg(@ModelAttribute(name="newsMsg") NewsMessage newsMsg) {
		newsMsgService.save(newsMsg);
		return "redirct:./viewNewsMessage";
	}
	
	@ResponseBody
	@GetMapping("/latestNewsArticle")
	public NewsInfoPage returnNewsArticle() {	
		int currPage = 1;
		int perPageAmount = 5;
		NewsInfoPage newsInfoPage = newsMsgService.findPageMsgByDateDesc(perPageAmount, currPage);
		
		return newsInfoPage;
		
	}
}
