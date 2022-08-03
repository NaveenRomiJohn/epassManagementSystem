package com.chainsys.epassManagementSystem.service;

import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.epassManagementSystem.model.EpassForm;
import com.chainsys.epassManagementSystem.model.EpassFormPassengersDTO;
import com.chainsys.epassManagementSystem.repository.EpassFormRepository;
import com.chainsys.epassManagementSystem.repository.PassengersRepository;

@Service
public class EpassFormService {
	@Autowired
	private EpassFormRepository epassFormRepository;

	@Autowired
	private PassengersRepository passengersRepositry;

	public EpassForm save(EpassForm epass) {
		return epassFormRepository.save(epass);
	}

	public List<EpassForm> getEpassForm(){
		List<EpassForm> listEpassForm=epassFormRepository.findAll();
		return listEpassForm;
	}
	
	public EpassForm findById(int id) {

		return epassFormRepository.findById(id);
	}
	@Transactional
	public void deleteById(int id) {
		epassFormRepository.deleteById(id);
	}
	
//	public EpassFormPassengersDTO getPetAndBreed(int id) {
//		EpassForm epassForm= epassFormRepository.findById(id);
//		EpassFormPassengersDTO dto=new EpassFormPassengersDTO();
//		dto.setEpassForm(epassForm);
//		List<Passengers> pet= passengersRepositry.findByEpassId(id);
//		Iterator<Passengers> itr=pet.iterator();
//		while(itr.hasNext()) {
//			dto.addPassengers((Passengers) itr.next());
//		}
//		return dto;
//	}
//	private EpassFormPassengersDTO convertDataIntoDTO(EpassForm epassForm) {
//
//		EpassFormPassengersDTO dto = new EpassFormPassengersDTO();
//		dto.setEpassId(epassForm.getEpassId());
//		dto.setTravelReason(epassForm.getTravelReason());
//		dto.setFromDate(epassForm.getFromDate());
//		dto.setToDate(epassForm.getToDate());
//		dto.setVehicleNumber(epassForm.getVehicleNumber());
//		dto.setNumberOfPassengers(epassForm.getNumberOfPassengers());
//		dto.setAppliedDate(epassForm.getAppliedDate());
//		dto.setFromAddress(epassForm.getFromAddress());
//		dto.setDestination_address(epassForm.getDestination_address());
//		
//		Passengers passengers = epassForm.getLocation();
//		dto.setLat(passengers.getLat());
//		dto.setLng(passengers.getLng());
//		dto.setPlace(passengers.getPlace());
//		return dto;
//	}

//	public EpassFormPassengersDTO setEpassAndPassengers(EpassFormPassengersDTO dto) {
//		EpassFormPassengersDTO dto = new EpassFormPassengersDTO();
//		EpassForm epassForm = new EpassForm();
//		dto.setEpassId(id);
//		dto.setTravelReason(null);
//		dto.setFromDate(null);
//		dto.setToDate(null);
//		dto.setVehicleNumber(null);
//		dto.setNumberOfPassengers(id);
//		dto.setAppliedDate(null);
//		dto.setFromAddress(null);
//		dto.setDestination_address(null);
//		Passengers pass = new Passengers();
//		pass.setPassengerName(null);
//		pass.setDateOfBirth(null);
//		pass.setPassengerGender(null);
//		pass.setCovidSymptoms(null);
//		pass.setIdProofType(null);
//		pass.setIdProofNumber(id);
//		dto.setPassengers(pass);
//
//		return dto;
//	}

//	public void save(EpassFormPassengersDTO dto) {
//		EpassForm epassForm = dto.getEpassForm();
//		save(epassForm);
//		Passengers passengers = dto.getPassengers();
//		passengersRepositry.save(passengers);
//	}
}
