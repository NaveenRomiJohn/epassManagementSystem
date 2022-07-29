package com.chainsys.epassManagementSystem.pojo;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "epass_form")
public class EpassForm {
	@Id
	@Column(name="epass_id")
	private int epassId;
	@Column(name="travel_reason")
	private String travelReason;
	@Column(name="from_date")
	private Date fromDate;
	@Column(name="to_date")
	private Date toDate;
	@Column(name="vehicle_number")
	private String vehicleNumber;
	@Column(name="number_of_passengers")
	private int numberOfPassengers;
	@Column(name="applied_date")
	private Date appliedDate;
	@Column(name="approval_status")
	private String approvalStatus;
	@Column(name="approved_date")
	private Date approvedDate;
	@Column(name = "from_address")
	private String fromAddress;
	@Column(name = "destination_address")
	private String destinationAddress;
	@Column(name = "application_type")
	private String applicationType;
	
	public int getEpassId() {
		return epassId;
	}
	public void setEpassId(int epassId) {
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
	public String getDestinationAddress() {
		return destinationAddress;
	}
	public void setDestinationAddress(String destinationAddress) {
		this.destinationAddress = destinationAddress;
	}
	public String getApplicationType() {
		return applicationType;
	}
	public void setApplicationType(String applicationType) {
		this.applicationType = applicationType;
	}
	
}
