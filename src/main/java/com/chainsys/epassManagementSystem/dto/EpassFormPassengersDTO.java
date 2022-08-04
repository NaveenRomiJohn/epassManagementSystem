package com.chainsys.epassManagementSystem.dto;

import java.util.List;

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
	
}