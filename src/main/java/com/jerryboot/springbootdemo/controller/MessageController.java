package com.jerryboot.springbootdemo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jerryboot.springbootdemo.model.AssistiveDevice;
import com.jerryboot.springbootdemo.model.Message;
import com.jerryboot.springbootdemo.service.MessageService;

@Controller
public class MessageController {
	@Autowired
	private MessageService Service;
	
	@GetMapping("/message/addMsg")
	public String addMessage(Model model) {
		model.addAttribute("Message", new Message());
		return "Message/addMessage";
	}
	
	@PostMapping("/message/add")
	public String postMsg(Model model,@ModelAttribute("Message") Message postAd) {
		Service.save(postAd);
		model.addAttribute("Message", new Message());
		
		Message latestMsg = Service.findLatestMsg();
		model.addAttribute("latestMsg", latestMsg);
		
		return "/Message/addMessage";
	}
	
	@GetMapping("/message/viewMessages")
	public String viewMessagesPage(Model model, @RequestParam(name="p", defaultValue="1") Integer pageNumber) {
		
		Page<Message> page = Service.findByPage(pageNumber);
		
		model.addAttribute("page", page);
		
		return "/Message/viewMessages";
	}
	
//	@PostMapping("/message/view")
//	public String postViewMsg(Model model,@ModelAttribute("Message") Message postView) {
//		Service.save(postView);
//		model.addAttribute("Message", new Message());
//		
//		Message latestMsg = Service.findLatestMsg();
//		model.addAttribute("latestMsg", latestMsg);
//		
//		return "/Message/addMessage";
//	}
	
}
