package com.jerryboot.springbootdemo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jerryboot.springbootdemo.dao.AssistiveDeviceApplicationFormDao;
import com.jerryboot.springbootdemo.dao.EditLogDao;
import com.jerryboot.springbootdemo.model.AssistiveDeviceApplicationForm;
import com.jerryboot.springbootdemo.service.AssistiveDeviceApplicationFormService;

@Controller
public class AssistiveDeviceApplicationFormController {

	@Autowired
	private AssistiveDeviceApplicationFormService service;
	@Autowired
	private AssistiveDeviceApplicationFormDao dao;
	@Autowired
	private EditLogDao editLogDao;
	
	@GetMapping("/Backstage/getAllAssistiveDeviceApplicationForm")
	public String findAllAssistiveDeviceApplicationForm(Model model,@RequestParam(name="p",defaultValue = "1")Integer pageNumber) {
		Page<AssistiveDeviceApplicationForm> page = service.findByPage(pageNumber);
		model.addAttribute("page",page);
		return "Backstage/jsp/allAssistiveDeviceApplicationFormPage";
		
	}
	
	
	
	
	
	
	
	
}
