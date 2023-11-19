package com.jerryboot.springbootdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.jerryboot.springbootdemo.model.AssistiveDevice;
import com.jerryboot.springbootdemo.service.AssistiveDeviceService;

@Controller
public class AssistiveDeviceController {
	
	@Autowired
	private AssistiveDeviceService adService;
	
	@GetMapping("/Auxiliary/addAuxiliaryPage")	// 新增輔具
	public String addAuxiliaryPage(Model model) {
		model.addAttribute("assistiveDevices", new AssistiveDevice());
		return "/Auxiliary/addAuxiliaryPage";
	}
	
	@GetMapping("/Auxiliary/assistiveDeviceIntroduce")	// 輔具介紹
	public String assistiveDeviceIntroduce(Model model) {
		model.addAttribute("assistiveDevices", new AssistiveDevice());
		return "/Auxiliary/assistiveDeviceIntroduce";
	}
	
	@GetMapping("/Auxiliary/buyAssistiveDevice")	// 輔具申請表單
	public String buyAssistiveDevice(Model model) {
		model.addAttribute("assistiveDevices", new AssistiveDevice());
		return "/Auxiliary/buyAssistiveDevice";
	}
	
	
	
	@PostMapping("/addDevices")
	public String postDevice(@ModelAttribute("assistiveDevices") AssistiveDevice postAd) {
		adService.save(postAd);
		return "index";
	}
	
	
	@GetMapping("/editAssistiveDevice/{id}")
	public String editDevice(Model model,@PathVariable("id") Integer id) {
		AssistiveDevice ad = adService.findById(id);
		model.addAttribute("assistiveDevices", ad);
		return "editAssistiveDevice";
	}
	
	@GetMapping("/list")
	public String listALl(Model model){
		List<AssistiveDevice> allAssistiveDevice = adService.allAssistiveDevice();
		model.addAttribute("assistiveDeviceList",allAssistiveDevice);
		return "listassistiveDevice";
	}
	
	@PostMapping("/postEditDevice")
	public String postEditDevice(@ModelAttribute("assistiveDevices") AssistiveDevice postAd) {
		adService.save(postAd);
		return "redirect:/list";
	}
	
	@GetMapping("deleteDevice/{id}")
	public String deleteDevice(@PathVariable("id") Integer id) {
		adService.delete(id);
		return "redirect:/list";
	}
	
	
	
	
	
}
