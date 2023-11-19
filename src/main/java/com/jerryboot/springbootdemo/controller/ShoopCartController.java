package com.jerryboot.springbootdemo.controller;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jerryboot.springbootdemo.model.Commodities;
import com.jerryboot.springbootdemo.model.ShoppingCart;
import com.jerryboot.springbootdemo.service.CommoditiesService;
import com.jerryboot.springbootdemo.service.ShoppingCartService;

@Controller
public class ShoopCartController {
	
	@Autowired
	private CommoditiesService comService;
	@Autowired
	private ShoppingCartService scService;
	
	@GetMapping("/ShoppingCart")
	public ModelAndView getShoopCartCookie(ModelAndView mav, HttpServletRequest request) {
		
		
//		Cookie[] cookies = request.getCookies();
		
		mav.setViewName("ShoppingCartPage");
		
////以下測試用
//		if(cookies!=null) {
//			
//			for (Cookie cookie : cookies) {
//				if(cookie.getName().contains("SessionID" + "|")) {
////					商品ID
//					System.out.println("Name "+cookie.getName().split("\\|")[1].split("A")[1]);
////					商品名稱
//					System.out.println("Value "+cookie.getValue().split("\\|")[0]);
////					照片名稱
//					System.out.println("Value "+cookie.getValue().split("\\|")[1]);
////					商品單價
//					System.out.println("Value "+cookie.getValue().split("\\|")[2]);
////					商品數量
//					System.out.println("Value "+cookie.getValue().split("\\|")[3]);
////					商品總價
//					System.out.println("Value "+cookie.getValue().split("\\|")[4]);
//				}
//				
//			}
//		}else {
//			System.out.println("NO Cookie");
//		}
////		用|分開後不記空白
////		System.out.println(scService.findById(1).getShoppingCartList());
////		找到最大的ID
//		System.out.println(scService.findLastId().getShoppingCartId());
//		System.out.println(scService.findById(scService.findLastId().getShoppingCartId()));
//		
////		多對多關聯查詢,用ShoppingCart的ID取得商品名
//		ShoppingCart shopId3 = scService.findById(3);
//		Set<Commodities> commoditiesList = shopId3.getCommodities();
//		Iterator<Commodities> comIterator = commoditiesList.iterator();
//		while (comIterator.hasNext()) {
//			Commodities commodities = (Commodities) comIterator.next();
//			System.out.println(commodities.getCommodityName());
//			
//		}
		
		return mav;
	}
	
	@PostMapping("/ShoppingCart")
	public ModelAndView getShoopCart(ModelAndView mav, HttpServletRequest request, HttpServletResponse response) {
		
//		取得cookie
		Cookie[] cookies = request.getCookies();
//		新的
		ShoppingCart sCart = new ShoppingCart();
//		新的
		Commodities com = new Commodities();
//		多對多
		Set<Commodities> commodities = new HashSet<Commodities>();
		Set<ShoppingCart> shoppingCart = new HashSet<ShoppingCart>();
//		用來放shoppingCartList
		String item = "";
		
		if(cookies!=null) {
			for (Cookie cookie : cookies) {
				
				
				if(cookie.getName().contains("SessionID" + "|")) {

//				商品的CookieKey SessionID|A1 用|分隔
				String[] cookieCommodityKey = cookie.getName().split("\\|");
				
//				商品ID
//				取得後半部並去掉A
				String commodityID = cookieCommodityKey[1].split("A")[1];
				
//				商品的CookieValue 品名|照片名|單價|數量|總價 用|分隔
				String[] cookieCommodityValue = cookie.getValue().split("\\|");
//				商品List 商品id,數量
				
				item += commodityID + "," + cookieCommodityValue[3] + "|";
				sCart.setShoppingCartList(item);
				
//				多對多
//				先把商品放入訂單的空的Set內
				
				commodities.add(comService.findById(Integer.parseInt(commodityID)));

//				清空cookie
//				設定cookie存活時間為0,並用add覆蓋原cookie
				cookie.setMaxAge(0);
				response.addCookie(cookie);
				
				}
			}
			String userName = SecurityContextHolder.getContext().getAuthentication().getName();
			sCart.setUserName(userName);
			sCart.setRemark("AAAAAAAAAAA");
			sCart.dateCreate();
			scService.insert(sCart);
			
//			多對多
//			把訂單放入商品的空的Set內
			int lastShopId = scService.findLastId().getShoppingCartId();
			shoppingCart.add(scService.findById(lastShopId));
			
//			把商品setting給ShoppingCart
			sCart.setCommodities(commodities);
			scService.insert(sCart);
			
//			把訂單setting給每個Commodities
//			找到訂單內容
			String lastShoppingCartList = scService.findLastId().getShoppingCartList();
//			訂單內容的每一筆Id與數量,用|分隔
			String[] commodityIdAndAmount = lastShoppingCartList.split("\\|");
//			把Id與數量分開,用,分隔,並取得每一筆Id
			for (int idList = 0; idList < commodityIdAndAmount.length; idList++) {
				String thisCommodityId = commodityIdAndAmount[idList].split(",")[0];
				Commodities comBean = comService.findById(Integer.parseInt(thisCommodityId));
				comBean.setShoppingCart(shoppingCart);
				comService.insert(comBean);
			}
			
			
			
			
		}else {
			System.out.println("NO Cookie");
		}
		
		mav.setViewName("redirect:/Commodities");

		
		return mav;
	}

}
/*
 * 連結不是set時
 * 商品1.setShoppingCart(訂單1)
 * 商品2.setShoppingCart(訂單1)
 * 
 * 連結是set時
 * new SetA
 * SetA.add(商品1)
 * SetA.add(商品2)
 * 訂單.setCommodities(SetA)
 * 
 * 且兩邊都要做
 * 
 * */

