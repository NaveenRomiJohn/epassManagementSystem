package com.chainsys.epassManagementSystem.pojo;

import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "epass_form")
public class EpassForm {
	@Id
	@Column(name="epass_id")
	private String epass_id;
	@Column(name="travel_reason")
	private String travel_reason;
	@Column(name="from_date")
	private Date from_date;
	@Column(name="to_date")
	private Date to_date;
	@Column(name="vehicle_number")
	private String vehicle_number;
	@Column(name="number_of_passengers")
	private int number_of_passengers;
	@Column(name="applied_date")
	private Date applied_date;
	@Column(name="approval_status")
	private String approval_status;
	@Column(name="approved_date")
	private Date approved_date;
	@Column(name = "from_address")
	private String from_address;
	@Column(name = "destination_address")
	private String destination_address;
	@Column(name = "application_type")
	private String application_type;
	
	public String getEpass_id() {
		return epass_id;
	}
	public void setEpass_id(String epass_id) {
		this.epass_id = epass_id;
	}
	public String getTravel_reason() {
		return travel_reason;
	}
	public void setTravel_reason(String travel_reason) {
		this.travel_reason = travel_reason;
	}
	public Date getFrom_date() {
		return from_date;
	}
	public void setFrom_date(Date from_date) {
		this.from_date = from_date;
	}
	public Date getTo_date() {
		return to_date;
	}
	public void setTo_date(Date to_date) {
		this.to_date = to_date;
	}
	public String getVehicle_number() {
		return vehicle_number;
	}
	public void setVehicle_number(String vehicle_number) {
		this.vehicle_number = vehicle_number;
	}
	public int getNumber_of_passengers() {
		return number_of_passengers;
	}
	public void setNumber_of_passengers(int number_of_passengers) {
		this.number_of_passengers = number_of_passengers;
	}
	public Date getApplied_date() {
		return applied_date;
	}
	public void setApplied_date(Date applied_date) {
		this.applied_date = applied_date;
	}
	public String getApproval_status() {
		return approval_status;
	}
	public void setApproval_status(String approval_status) {
		this.approval_status = approval_status;
	}
	public Date getApproved_date() {
		return approved_date;
	}
	public void setApproved_date(Date approved_date) {
		this.approved_date = approved_date;
	}
	public String getFrom_address() {
		return from_address;
	}
	public void setFrom_address(String from_address) {
		this.from_address = from_address;
	}
	public String getDestination_address() {
		return destination_address;
	}
	public void setDestination_address(String destination_address) {
		this.destination_address = destination_address;
	}
	public String getApplication_type() {
		return application_type;
	}
	public void setApplication_type(String application_type) {
		this.application_type = application_type;
	}
	
}
