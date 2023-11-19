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

@Entity
@Table(name = "assistive_device")
public class AssistiveDevice {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Integer id;
	@Column(name = "name" , columnDefinition = "nvarchar(20)")
	private String name;
	@Column(name="gender" , columnDefinition = "nvarchar(2)")
	private String gender;
	@Column(name = "telephone", columnDefinition = "nvarchar(20)")
	private String telephone;
	@Column(name = "address" ,columnDefinition = "nvarchar(50)")
	private String address;
	@Column(name = "assistiveDevice", columnDefinition = "nvarchar(100)")
	private String assistiveDevice;
	@Column(name = "assistiveDeviceImg")
	private String assistiveDeviceImg;
	@Temporal(TemporalType.DATE)
	@Column(name = "added",columnDefinition = "date")
	private Date added;
	
	public AssistiveDevice() {
	}
	@PrePersist 
	public void onDate() {
		if(added== null) {
			added= new Date();
		}
	}
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAssistiveDevice() {
		return assistiveDevice;
	}

	public void setAssistiveDevice(String assistiveDevice) {
		this.assistiveDevice = assistiveDevice;
	}


	public Date getAdded() {
		return added;
	}

	public void setAdded(Date added) {
		this.added = added;
	}

	@Override
	public String toString() {
		return "AssistiveDevice [id=" + id + ", name=" + name + ", gender=" + gender + ", telephone=" + telephone
				+ ", address=" + address + ", assistiveDevice=" + assistiveDevice + ", added=" + added + "]";
	}
	public String getAssistiveDeviceImg() {
		return assistiveDeviceImg;
	}
	public void setAssistiveDeviceImg(String assistiveDeviceImg) {
		this.assistiveDeviceImg = assistiveDeviceImg;
	}
	
}
