package com.chainsys.epassManagementSystem.model;

import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "epass_passengers")
public class Passengers {
	@Id
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
	@Column(name = "id_proof_number")
	private long idProofNumber;
	@Column(name = "user_id")
	private String userId;

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

	public long getIdProofNumber() {
		return idProofNumber;
	}

	public void setIdProofNumber(long idProofNumber) {
		this.idProofNumber = idProofNumber;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

}
