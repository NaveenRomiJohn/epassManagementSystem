package com.chainsys.epassManagementSystem.pojo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "epass_passengers")
public class Passengers {
	@Id
	@Column(name = "passenger_name")
	private String passenger_name;
	@Column(name = "date_of_birth")
	private Date date_of_birth;
	@Column(name = "passenger_gender")
	private String passenger_gender;
	@Column(name = "covid_symptoms")
	private String covid_symptoms;
	@Column(name = "id_proof_type")
	private String id_proof_type;
	@Column(name = "id_proof_number")
	private int id_proof_number;

	public String getPassenger_name() {
		return passenger_name;
	}

	public void setPassenger_name(String passenger_name) {
		this.passenger_name = passenger_name;
	}

	public Date getDate_of_birth() {
		return date_of_birth;
	}

	public void setDate_of_birth(Date date_of_birth) {
		this.date_of_birth = date_of_birth;
	}

	public String getPassenger_gender() {
		return passenger_gender;
	}

	public void setPassenger_gender(String passenger_gender) {
		this.passenger_gender = passenger_gender;
	}

	public String getCovid_symptoms() {
		return covid_symptoms;
	}

	public void setCovid_symptoms(String covid_symptoms) {
		this.covid_symptoms = covid_symptoms;
	}

	public String getId_proof_type() {
		return id_proof_type;
	}

	public void setId_proof_type(String id_proof_type) {
		this.id_proof_type = id_proof_type;
	}

	public int getId_proof_number() {
		return id_proof_number;
	}

	public void setId_proof_number(int id_proof_number) {
		this.id_proof_number = id_proof_number;
	}

}
