package com.jerryboot.springbootdemo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.jerryboot.springbootdemo.dao.MemberDao;
import com.jerryboot.springbootdemo.model.Member;
import com.jerryboot.springbootdemo.model.NewsInfoPage;
import com.jerryboot.springbootdemo.service.MemberService;
import com.jerryboot.springbootdemo.service.NewsMessageService;

@Controller
public class PageController {

// 前台轉頁控制

	@Autowired
	private MemberService mService;
	
	@Autowired
	private NewsMessageService newsMsgService;
	
	
	@GetMapping("/")
	public String index(Model model) {
		int currPage = 1;
		int perPageAmount = 5;
		NewsInfoPage newsInfoPage = newsMsgService.findPageMsgByDateDesc(perPageAmount, currPage);
		model.addAttribute("newsMsgList", newsInfoPage.getNewsMsgList());
		
		
		return "index";
	}
	

	@GetMapping("/frontMemberLogin") // 前台會員登入
	public String frontMemberLogin() {
		return "/FrontMember/frontMemberLogin";
	}

	@GetMapping("/frontAddMemberPage") // 前台註冊會員
	public String frontAddMemberPage() {
		return "/FrontMember/frontAddMemberPage";
	}

//	@GetMapping("/FrontMember/gofrontAddMemberPage")
//	public String frontAddMemberPage(Model model) {
//	//	model.addAttribute("memberBean", new Member());
//
//		return "FrontMember/frontAddMemberPage";
//
//	}

	@PostMapping("/FrontMember/gofrontAddMemberPage")
	public String frontAddMemberPage(@ModelAttribute("memberBean") Member addMem) {
		service.addMember(addMem);

		return "redirect:getall";
	}

	@GetMapping("/myWebTour") // 網頁導覽
	public String myWebTour() {
		return "myWebTour";
	}
	
	@GetMapping("/CommoditiesPage") // 商店
	public String CommoditiesPage() {
		return "CommoditiesPage";
	}
	
	@GetMapping("/ShoppingCartPage") // 購物車
	public String ShoppingCartPage() {
		return "ShoppingCartPage";
	}

	@GetMapping("/agencyData")	// 機構
	public String agencyData() {
		return "Agency/agencyData";
	}

	@GetMapping("/selectAgencyData")
	public String selectAgency() {
		return "selectAgencyData";
	}

	@GetMapping("/assistiveDevice") // 輔具
	public String assistiveDevice() {
		return "Auxiliary/assistiveDevice";
	}

	@GetMapping("assistiveDeviceIntroduce")
	public String assistiveDeviceIntroduce() {
		return "assistiveDeviceIntroduce";
	}

	@GetMapping("/aboutimedical") // 關於iMedical
	public String aboutimedical() {
		return "aboutimedical";
	}

	@GetMapping("/gosubsidy") // 長照補助
	public String gosubsidy() {
		return "/gosubsidy";
	}

	@GetMapping("/subsidy") // 長照2.0
	public String gotosubsidy() {
		return "/subsidy";
	}
	
	@GetMapping("/otherServe") // 其他長照2.0服務
	public String otherServe() {
		return "otherServe";
	}

	@GetMapping("/messageNavbar") // 留言板
	public String messageNavbar() {
		return "/default/messageNavbar";
	}

//	@GetMapping("/message/viewMessages")	// 留言板查看訊息
//	public String viewMessages() {
//		return "/Message/viewMessages";
//	}	// **未成功，Message需重作


//------------------------------ FAQ ----------------------------------

	@GetMapping("/faq")
	public String faq() {
		return "/FAQ/faq";
	}

	@GetMapping("/faqQuestion")
	public String goFaqQuestion() {
		return "/FAQ/faqQuestion";
	}

	@GetMapping("/faqQuestiontwo")
	public String goFaqQuestion1() {
		return "/FAQ/faqQuestiontwo";
	}

	@GetMapping("/faqQuestionthree")
	public String goFaqQuestion2() {
		return "/FAQ/faqQuestionthree";
	}

	@GetMapping("/faqQuestionfour")
	public String goFaqQuestion3() {
		return "/FAQ/faqQuestionfour";
	}

	@GetMapping("/faqQuestionfive")
	public String goFaqQuestion4() {
		return "/FAQ/faqQuestionfive";
	}

	@GetMapping("/faqQuestionsix")
	public String goFaqQuestion5() {
		return "/FAQ/faqQuestionsix";
	}

///////////////////////////////////  後台端  ////////////////////////////////////////////// 
//----------------------- 後台轉頁控制 -------------------------

	@Autowired
	private MemberService service;
	@Autowired
	private MemberDao dao;

	@GetMapping("/Backstage")
	public String Backstage() {
		return "Backstage/jsp/index";
	}

	@GetMapping("/myNavbar")
	public String myNavbar() {
		return "/Backstage/jsp/default/myNavbar";
	}

//--------------------------  會員資料 MemberController ----------------------------

//	@GetMapping("/Backstage/getall")
//	public String findAllMember(Model model) {
//		List<Member> allMember = service.getAllMember();
//		model.addAttribute("memList", allMember);
//		return "Backstage/jsp/allMember";
//	}
//
//	@GetMapping("/Backstage/editMember")
//	public String editMemberPage(@RequestParam("id") Integer id, Model model) {
//		Optional<Member> someMem = dao.findById(id);
//		model.addAttribute("someMember", someMem);
//		return "Backstage/jsp/editMemberPage";
//	}
//
//	@PostMapping("/Backstage/editMember")
//	public String editMember(@ModelAttribute("memberBean") Member mem, Model model) {
//
//		Member update = dao.save(mem);
//		model.addAttribute("memberBean", update);
//		return "redirect:getall";
//
//	}
//
//	@GetMapping("/Backstage/deleteMember")
//	public String deleteMember(@RequestParam("id") Integer id) {
//		dao.deleteById(id);
//		return "Backstage/jsp/redirect:getall";
//	}
//	
//
//	@GetMapping("/Backstage/goAddMember")
//	public String addMemberPage(Model model) {
//		model.addAttribute("memberBean", new Member());
//
//		return "Backstage/jsp/addMemberPage";
//
//	}
//
//	@PostMapping("/Backstage/addMember")
//	public String addMember(@ModelAttribute("memberBean") Member addMem) {
//		service.addMember(addMem);
//
//		return "redirect:getall";
//	}

}
