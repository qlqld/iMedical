package com.jerryboot.springbootdemo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jerryboot.springbootdemo.model.Commodities;
import com.jerryboot.springbootdemo.model.CommoditiesRepository;

@Service
@Transactional
public class CommoditiesService {
	
	@Autowired
	private CommoditiesRepository comDao;
	
	public void insert(Commodities com) {
		comDao.save(com);
	}
	
	public Commodities findById(Integer id) {
		Optional<Commodities> option = comDao.findById(id);
		if(option.isPresent()) {
			return option.get();
		}
		return null;
	}
	
	public List<Commodities> findAllCommodities(){
		return comDao.findAll();
	}
	
	public void deleteById(Integer id) {
		comDao.deleteById(id);
	}

}
