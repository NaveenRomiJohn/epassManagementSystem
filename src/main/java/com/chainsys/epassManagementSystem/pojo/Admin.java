package com.chainsys.epassManagementSystem.pojo;

import java.sql.Date;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;

@Entity
@Table(name = "epass_admin")
public class Admin {
	@Id
	private String admin_id;
	
	@NotEmpty(message = "Please enter your name.")
	private String admin_name;
	
	private String admin_email;
	
	@Min(value= 6, message = "Minimum password length is 6 characters.")
	private String admin_password;
	
	private Date date_of_joining;
	private String admin_designation;
	
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	public String getAdmin_email() {
		return admin_email;
	}
	public void setAdmin_email(String admin_email) {
		this.admin_email = admin_email;
	}
	public String getAdmin_password() {
		return admin_password;
	}
	public void setAdmin_password(String admin_password) {
		this.admin_password = admin_password;
	}
	public Date getDate_of_joining() {
		return date_of_joining;
	}
	public void setDate_of_joining(Date date_of_joining) {
		this.date_of_joining = date_of_joining;
	}
	public String getAdmin_designation() {
		return admin_designation;
	}
	public void setAdmin_designation(String admin_designation) {
		this.admin_designation = admin_designation;
	}

}
