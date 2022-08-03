package com.chainsys.epassManagementSystem.model;

import java.util.ArrayList;
import java.util.List;

public class EpassFormPassengersDTO {

	private List<EpassForm> epassFormList=new ArrayList<EpassForm>();
	private List<Passengers> passengersList=new ArrayList<Passengers>();
	
	public List<EpassForm> getEpassFormList() {
		return epassFormList;
	}
	public void setEpassFormList(EpassForm epassForm) {
		epassFormList.add(epassForm);
	}
	public List<Passengers> getPassengers() {
		return passengersList;
	}
	public void setPassengers(Passengers passengers) {
		passengersList.add(passengers);
	}


}
