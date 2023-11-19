package com.jerryboot.springbootdemo.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="newsMessage")
public class NewsMessage {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private Integer id;
	
	@Column(name="title", columnDefinition = "nvarchar(50)")
	private String title;
	
	@Column(name="text", columnDefinition = "nvarchar(max)")
	private String text;
	
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="date")
	private Date date;

	
	@PrePersist
	public void onCreate() {
		if (date == null) {
			this.date = new Date();
		}
	}
	
	public NewsMessage() {
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	
}
