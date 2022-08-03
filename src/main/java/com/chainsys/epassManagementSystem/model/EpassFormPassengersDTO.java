package com.chainsys.epassManagementSystem.model;

import java.util.List;

public class EpassFormPassengersDTO {

	private EpassForm epassForm;
	private List<Passengers> passengers;

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
	
}