package com.jerryboot.springbootdemo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.jerryboot.springbootdemo.model.NewsMessage;

@Repository
public interface NewsMessageDao extends JpaRepository<NewsMessage, Integer> {
	
	
	@Query(value = "select * from NewsMessage order by date desc", nativeQuery = true )
	public List<NewsMessage> getAllNewsMsgByDateDesc();

	@Query(value = "select * from NewsMessage where id = :id", nativeQuery = true )
	public NewsMessage getMsgById(@Param("id") Integer id);
	
	@Query(value = "select * from NewsMessage order by date desc offset :offsetRows rows fetch first :fetchRows rows only", nativeQuery = true)
	public List<NewsMessage> getPageMsgByDateDesc(@Param("offsetRows") int offsetRows, @Param("fetchRows") int fetchRows);
	
	
	@Query(value = "select count(*) from NewsMessage", nativeQuery = true)
	public Integer getTotalMsgAmount();

	
}
