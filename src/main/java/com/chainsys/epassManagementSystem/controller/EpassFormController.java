package com.chainsys.epassManagementSystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.chainsys.epassManagementSystem.model.EpassForm;
import com.chainsys.epassManagementSystem.model.EpassFormPassengersDTO;
import com.chainsys.epassManagementSystem.service.EpassFormService;

@Controller
public class EpassFormController {

	@Autowired
	public EpassFormService epassFormService;
	@Autowired
	public UserController userController;
	
//	form type
	@RequestMapping("/epassformtype")
	public String epassFormType() {
		return "epass-form-type";
	}
//	register
	@GetMapping("/epassformwithindistrict")
	public String epassFormWithinDistrict(Model model) {
		EpassFormPassengersDTO dto = new EpassFormPassengersDTO();//epassFormService.setEpassAndPassengers() ;
		model.addAttribute("epasswithindistrict",dto);
		return "epass-form-within-district";
	}

	@PostMapping("/registerwithindistrict")
	public String addEpassWithinDistrict(@ModelAttribute("epasswithindistrict") EpassForm epassForm) {
		epassFormService.save(epassForm);
		return "epass-registered";
	}
	
//	@GetMapping("/getbreedpet")
//	public String GetBreedAndPet(@RequestParam("id") int id,Model model) {
//		EpassFormPassengersDTO dto=epassFormService.getPetAndBreed(id);
//		model.addAttribute("getbreed",dto.getEpassForm());
//		model.addAttribute("petlist",dto.getPassengersList());
//		return "list-breed-pet";
//	}
	
//	public String setEpassAndPassengers(Model model) {
//		EpassFormPassengersDTO dto = new EpassFormPassengersDTO();
//		EpassForm epassForm = new EpassForm();
//		dto.setEpassId();
//		dto.setTravelReason();
//		dto.setFromDate();
//		dto.setToDate();
//		dto.setVehicleNumber();
//		dto.setNumberOfPassengers();
//		dto.setAppliedDate();
//		dto.setFromAddress();
//		dto.setDestination_address();
//		Passengers pass = new Passengers();
//		pass.setPassengerName(null);
//		pass.setDateOfBirth(null);
//		pass.setPassengerGender(null);
//		pass.setCovidSymptoms(null);
//		pass.setIdProofType(null);
//		pass.setIdProofNumber(id);
//		dto.setPassengers(pass);
//		epassFormService.addDoctorAndAppointments(dto);
//		return dto;
//	}
	
}
