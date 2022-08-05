package com.chainsys.epassManagementSystem.model;

import java.sql.Date;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "epass_form")
public class EpassForm {
	@Id
	@Column(name = "epass_id")
	private Integer epassId;
	@Column(name = "travel_reason")
	private String travelReason;
	@Column(name = "from_date")
	private Date fromDate;
	@Column(name = "to_date")
	private Date toDate;
	@Column(name = "vehicle_number")
	private String vehicleNumber;
	@Column(name = "number_of_passengers")
	private Integer numberOfPassengers;
	@Column(name = "applied_date")
	private Date appliedDate;
	@Column(name = "approval_status")
	private String approvalStatus;
	@Column(name = "approved_date")
	private Date approvedDate;
	@Column(name = "from_address")
	private String fromAddress;
	@Column(name = "destination_address")
	private String destinationAddress;
	@Column(name = "application_type")
	private String applicationType;
	@Column(name = "user_id")
	private Integer userId;
	@Column(name = "admin_id")
	private Integer adminId;
	@Column(name = "district_id")
	private Integer districtId;

	@OneToMany(mappedBy = "epassform", fetch = FetchType.LAZY)
	private List<Passengers> listPass;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_id", insertable = false, updatable = false, nullable = false)
	private User user;

	@OneToMany(mappedBy = "epassForm", fetch = FetchType.LAZY)
	private List<AcrossDistrict> acrossDistrict;
	
	@OneToMany(mappedBy = "epassForm", fetch = FetchType.LAZY)
	private List<OutsideState> outsideState;
	
	public Integer getEpassId() {
		return epassId;
	}

	public void setEpassId(Integer epassId) {
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

	public Integer getNumberOfPassengers() {
		return numberOfPassengers;
	}

	public void setNumberOfPassengers(Integer numberOfPassengers) {
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

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getAdminId() {
		return adminId;
	}

	public void setAdminId(Integer adminId) {
		this.adminId = adminId;
	}

	public List<Passengers> getListPass() {
		return listPass;
	}

	public void setListPass(List<Passengers> listPass) {
		this.listPass = listPass;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Integer getDistrictId() {
		return districtId;
	}

	public void setDistrictId(Integer districtId) {
		this.districtId = districtId;
	}

	public List<AcrossDistrict> getAcrossDistrict() {
		return acrossDistrict;
	}

	public void setAcrossDistrict(List<AcrossDistrict> acrossDistrict) {
		this.acrossDistrict = acrossDistrict;
	}

	public List<OutsideState> getOutsideState() {
		return outsideState;
	}

	public void setOutsideState(List<OutsideState> outsideState) {
		this.outsideState = outsideState;
	}

}