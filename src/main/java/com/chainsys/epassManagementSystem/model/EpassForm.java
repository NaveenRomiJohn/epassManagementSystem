package com.chainsys.epassManagementSystem.model;

import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "epass_form")
public class EpassForm {
	@Id
	@Column(name = "epass_id")
	private String epassId;
	@Column(name = "travel_reason")
	private String travelReason;
	@Column(name = "from_date")
	private Date fromDate;
	@Column(name = "to_date")
	private Date toDate;
	@Column(name = "vehicle_number")
	private String vehicleNumber;
	@Column(name = "number_of_passengers")
	private int numberOfPassengers;
	@Column(name = "applied_date")
	private Date appliedDate;
	@Column(name = "approval_status")
	private String approvalStatus;
	@Column(name = "approved_date")
	private Date approvedDate;
	@Column(name = "from_address")
	private String fromAddress;
	@Column(name = "destinationAddress")
	private String destination_address;
	@Column(name = "application_type")
	private String applicationType;
	@Column(name = "user_id")
	private String userId;
	@Column(name = "admin_id")
	private String adminId;

	public String getEpassId() {
		return epassId;
	}

	public void setEpassId(String epassId) {
		this.epassId = epassId;
	}

	public String getTravelReason() {
		return travelReason;
	}

	public void setTravelReason(String travelReason) {
		this.travelReason = travelReason;
	}

	public Date getFromDate() {
		return fromDate;
	}

	public void setFromDate(Date fromDate) {
		this.fromDate = fromDate;
	}

	public Date getToDate() {
		return toDate;
	}

	public void setToDate(Date toDate) {
		this.toDate = toDate;
	}

	public String getVehicleNumber() {
		return vehicleNumber;
	}

	public void setVehicleNumber(String vehicleNumber) {
		this.vehicleNumber = vehicleNumber;
	}

	public int getNumberOfPassengers() {
		return numberOfPassengers;
	}

	public void setNumberOfPassengers(int numberOfPassengers) {
		this.numberOfPassengers = numberOfPassengers;
	}

	public Date getAppliedDate() {
		return appliedDate;
	}

	public void setAppliedDate(Date appliedDate) {
		this.appliedDate = appliedDate;
	}

	public String getApprovalStatus() {
		return approvalStatus;
	}

	public void setApprovalStatus(String approvalStatus) {
		this.approvalStatus = approvalStatus;
	}

	public Date getApprovedDate() {
		return approvedDate;
	}

	public void setApprovedDate(Date approvedDate) {
		this.approvedDate = approvedDate;
	}

	public String getFromAddress() {
		return fromAddress;
	}

	public void setFromAddress(String fromAddress) {
		this.fromAddress = fromAddress;
	}

	public String getDestination_address() {
		return destination_address;
	}

	public void setDestination_address(String destination_address) {
		this.destination_address = destination_address;
	}

	public String getApplicationType() {
		return applicationType;
	}

	public void setApplicationType(String applicationType) {
		this.applicationType = applicationType;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

}
