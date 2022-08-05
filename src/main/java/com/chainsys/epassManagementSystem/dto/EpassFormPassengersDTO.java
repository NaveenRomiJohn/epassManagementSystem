package com.chainsys.epassManagementSystem.dto;

import java.sql.Date;
import java.util.List;
import javax.persistence.Column;
import com.chainsys.epassManagementSystem.model.EpassForm;
import com.chainsys.epassManagementSystem.model.Passengers;

public class EpassFormPassengersDTO {

	private EpassForm epassForm;
	private List<Passengers> passengers;
	private List<EpassForm> epassList;

	public EpassForm getEpassForm() {
		return epassForm;
	}

	public void setEpassForm(EpassForm epassForm) {
		this.epassForm = epassForm;
	}

	public List<Passengers> getPassengers() {
		return passengers;
	}

	public void setPassengers(List<Passengers> passengers) {
		this.passengers = passengers;
	}

	public List<EpassForm> getEpassList() {
		return epassList;
	}

	public void setEpassList(List<EpassForm> epassList) {
		this.epassList = epassList;
	}

	// epass
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
	@Column(name = "id_proof_number")
	private Integer idProofNumber;
	@Column(name = "epass_id")
	private Integer epassId1;
	@Column(name = "passenger_name")
	private String passengerName;
	@Column(name = "date_of_birth")
	private Date dateOfBirth;
	@Column(name = "passenger_gender")
	private String passengerGender;
	@Column(name = "covid_symptoms")
	private String covidSymptoms;
	@Column(name = "id_proof_type")
	private String idProofType;

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

	public Integer getDistrictId() {
		return districtId;
	}

	public void setDistrictId(Integer districtId) {
		this.districtId = districtId;
	}

	public Integer getIdProofNumber() {
		return idProofNumber;
	}

	public void setIdProofNumber(Integer idProofNumber) {
		this.idProofNumber = idProofNumber;
	}

	public Integer getEpassId1() {
		return epassId1;
	}

	public void setEpassId1(Integer epassId1) {
		this.epassId1 = epassId1;
	}

	public String getPassengerName() {
		return passengerName;
	}

	public void setPassengerName(String passengerName) {
		this.passengerName = passengerName;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getPassengerGender() {
		return passengerGender;
	}

	public void setPassengerGender(String passengerGender) {
		this.passengerGender = passengerGender;
	}

	public String getCovidSymptoms() {
		return covidSymptoms;
	}

	public void setCovidSymptoms(String covidSymptoms) {
		this.covidSymptoms = covidSymptoms;
	}

	public String getIdProofType() {
		return idProofType;
	}

	public void setIdProofType(String idProofType) {
		this.idProofType = idProofType;
	}

}