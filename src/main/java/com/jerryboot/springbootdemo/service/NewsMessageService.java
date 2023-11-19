package com.jerryboot.springbootdemo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jerryboot.springbootdemo.dao.NewsMessageDao;
import com.jerryboot.springbootdemo.model.NewsInfoPage;
import com.jerryboot.springbootdemo.model.NewsMessage;

@Service
@Transactional
public class NewsMessageService {
	
	@Autowired
	private NewsMessageDao newsMessageDao; 
	
	public List<NewsMessage> findAllNewsMsgByDateDesc() {
		return newsMessageDao.getAllNewsMsgByDateDesc();
	}
	
	
	public NewsInfoPage findPageMsgByDateDesc(int perPageAmount ,int currPage) {
		int offsetPages = perPageAmount * (currPage - 1);
		List<NewsMessage> newsMsgList = newsMessageDao.getPageMsgByDateDesc(offsetPages, perPageAmount);
		Integer totalMsgNum = newsMessageDao.getTotalMsgAmount();
		Integer totalPage = (int)Math.ceil(totalMsgNum / perPageAmount * 1.0);
		
		return new NewsInfoPage(newsMsgList, totalMsgNum, totalPage, currPage);
	}
	
	public NewsMessage findNewsMsgById(Integer id) {
		return newsMessageDao.getMsgById(id);
	}
	
	public void save(NewsMessage newsMsg) {
		newsMessageDao.save(newsMsg);
	}
	
	public Integer finTotalMsgAmount() {
		Integer total = newsMessageDao.getTotalMsgAmount();
		if (total == null)
			return 0;
		return total;
	}
}
