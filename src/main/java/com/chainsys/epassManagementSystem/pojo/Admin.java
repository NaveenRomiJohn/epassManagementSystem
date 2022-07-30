package com.chainsys.epassManagementSystem.pojo;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "epass_admin")
public class Admin {
	@Id
	@Column(name = "admin_id")
	private int admin_id;
	@Column(name = "admin_name")
	private String admin_name;
	@Column(name = "admin_email")
	private String admin_email;
	@Column(name = "admin_password")
	private String admin_password;
	@Column(name = "date_of_joining")
	private Date date_of_joining;
	@Column(name = "admin_designation")
	private String admin_designation;

	public int getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(int admin_id) {
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
