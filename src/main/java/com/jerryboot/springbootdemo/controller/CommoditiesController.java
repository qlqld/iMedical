package com.jerryboot.springbootdemo.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.jerryboot.springbootdemo.model.Commodities;
import com.jerryboot.springbootdemo.service.CommoditiesService;

@Controller
public class CommoditiesController {

	@Autowired
	private CommoditiesService comService;
	
	@GetMapping("/Commodities")
	public ModelAndView allCommoditiesPage(ModelAndView mav) {
	
		List<Commodities> allcom = comService.findAllCommodities();
		mav.getModel().put("listCommodities", allcom);
		mav.setViewName("CommoditiesPage");
		return mav;
	}
	
	@GetMapping("/AddCommodities")
	public ModelAndView addCommoditiesPage(ModelAndView mav) {
		Commodities newcom = new Commodities();
		mav.getModel().put("addCommodities", newcom);//form的modelAttribute
		mav.setViewName("AddCommoditiesPage");//jsp名稱,返回路徑
		return mav;
	}
	
	@PostMapping("/AddCommodities")
	public ModelAndView addCommoditiesPage(ModelAndView mav, @ModelAttribute(name="addCommodities") Commodities com 
			) {
//		照片處理

		comService.insert(com);
		Commodities newcom = new Commodities();
		mav.getModel().put("addCommodities", newcom);
		mav.setViewName("AddCommoditiesPage");//jsp名稱,返回某頁面
		return mav;
	}
	
	@GetMapping("/ProducePage")
	public ModelAndView producePage(ModelAndView mav, @RequestParam(name="commodityId") Integer id) {
	
		Commodities com = comService.findById(id);
		mav.addObject("produce", com);
		mav.setViewName("ProductPage");
		return mav;
	}
	///////////////////////編輯商品
	
	@GetMapping("/EditCommodities")
	public ModelAndView editCommoditiesPage(ModelAndView mav) {
	
		List<Commodities> allcom = comService.findAllCommodities();
		mav.getModel().put("listCommodities", allcom);
		mav.setViewName("EditCommoditiesPage");
		return mav;
	}
	
	@GetMapping("/EditCommodity")
	public String editCommodityPage(Model model, @RequestParam(name="commodityId") Integer id) {
		//不用ModelAndView 會跟 @RequestParam 衝突?
		Commodities com = comService.findById(id);
		model.addAttribute("EditCommodity", com);
		
		return "EditCommodityPage";
	}
	
	@PostMapping("/EditCommodity")
	public ModelAndView editCommodity(ModelAndView mav, @ModelAttribute(name="EditCcommodity") Commodities com, BindingResult br) {
		
		mav.setViewName("EditCommodity");
		
		if(!br.hasErrors()) {
			comService.insert(com);
			mav.setViewName("redirect:/EditCommodities");
		}
		return mav;
	}
	
	@GetMapping("/DeletCommodity")
	public String deletCommodity(@RequestParam(name="commodityId") Integer id) {
		comService.deleteById(id);
		return "redirect:/EditCommodity";
	}
	
}
