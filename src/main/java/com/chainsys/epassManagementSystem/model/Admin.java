package com.chainsys.epassManagementSystem.model;

import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name = "epass_admin")
public class Admin {
	@Id
	@Column(name = "admin_id")
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "admin_id_seq")
    @SequenceGenerator(name = "admin_id_seq", sequenceName = "admin_id_seq",  allocationSize = 1)
	private Integer adminId;
	
	@Column(name = "admin_name")
	@Size(max = 20, min = 3, message = "name length should be minimum 3 characters ")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$",message ="name must not contain digits" )
	private String adminName;
	
	@Column(name = "admin_email")
	@NotEmpty @Email
	private String adminEmail;
	
	@Column(name = "admin_password")
	@Size(max = 20, min = 6, message = "password length should be 6 to 20")
	private String adminPassword;
	
	@Column(name = "date_of_joining")
	private Date dateOfJoining;
	
	@Column(name = "admin_designation")
	@Size(max = 20, min = 3)
	private String adminDesignation;

	public Integer getAdminId() {
		return adminId;
	}

	public void setAdminId(Integer adminId) {
		this.adminId = adminId;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getAdminEmail() {
		return adminEmail;
	}

	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}

	public String getAdminPassword() {
		return adminPassword;
	}

	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}

	public Date getDateOfJoining() {
		return dateOfJoining;
	}

	public void setDateOfJoining(Date dateOfJoining) {
		this.dateOfJoining = dateOfJoining;
	}

	public String getAdminDesignation() {
		return adminDesignation;
	}

	public void setAdminDesignation(String adminDesignation) {
		this.adminDesignation = adminDesignation;
	}

}
