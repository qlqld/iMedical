package com.jerryboot.springbootdemo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jerryboot.springbootdemo.dao.AssistiveDeviceDao;
import com.jerryboot.springbootdemo.model.AssistiveDevice;

@Service
@Transactional
public class AssistiveDeviceService {
	
	
	@Autowired
	private AssistiveDeviceDao dao;
	
	public void save(AssistiveDevice ad) {
		dao.save(ad);
	}
	public List<AssistiveDevice> allAssistiveDevice(){
		List<AssistiveDevice> findAll = dao.findAll();
		return findAll;
	}
	
	public AssistiveDevice findById(Integer id){
		Optional<AssistiveDevice> option = dao.findById(id);
		if(option.isPresent()) {
			AssistiveDevice ad = option.get();
			return ad;
		}
		return null;
	}
	
	public void delete(Integer id) {
		dao.deleteById(id);
	}
	
}
