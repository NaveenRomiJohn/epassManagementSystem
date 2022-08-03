package com.chainsys.epassManagementSystem.model;

import java.sql.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
	@Column(name = "epass_id")
	private int epassId;

	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="epass_id", insertable=false, updatable=false, nullable=false)
	private EpassForm epassform;
	
	public EpassForm getEpassForm() {
		return epassform;
	}
	public void setEpassForm(EpassForm epassform) {
		this.epassform = epassform;
	}
	
	public int getEpassId() {
		return epassId;
	}

	public void setEpassId(int epassId) {
		this.epassId = epassId;
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

	public long getIdProofNumber() {
		return idProofNumber;
	}

	public void setIdProofNumber(long idProofNumber) {
		this.idProofNumber = idProofNumber;
	}

}
