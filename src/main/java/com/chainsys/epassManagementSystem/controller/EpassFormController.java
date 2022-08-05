package com.chainsys.epassManagementSystem.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.chainsys.epassManagementSystem.dto.EpassAcrossDistrictDTO;
import com.chainsys.epassManagementSystem.dto.EpassFormOutsideStateDTO;
import com.chainsys.epassManagementSystem.dto.EpassFormPassengersDTO;
import com.chainsys.epassManagementSystem.model.EpassForm;
import com.chainsys.epassManagementSystem.model.Passengers;
import com.chainsys.epassManagementSystem.service.EpassFormService;
import com.chainsys.epassManagementSystem.service.PassengersService;

@Controller
public class EpassFormController {

	@Autowired
	public EpassFormService epassFormService;

	@Autowired
	public PassengersService passengersService;
	
//	form type
	@RequestMapping("/epassformtype")
	public String epassFormType() {
		return "epass-form-type";
	}

//	register
	@GetMapping("/epassformwithindistrict")
	public String epassFormWithinDistrict(Model model) {
		EpassForm epassForm = new EpassForm();									
		model.addAttribute("epasswithindistrict", epassForm);
		return "epass-form-within-district";
	}

	@GetMapping("/passengerswithindistrict")
	public String passengersWithinDistrict(@ModelAttribute("epasswithindistrict") EpassForm epassForm,Model model) {
		epassFormService.save(epassForm);
		Passengers passengers = new Passengers();														
		model.addAttribute("passengerswithindistrict", passengers);
		return "epass-passengers-within-district";
	}
	
	@PostMapping("/registerwithindistrict")
	public String addEpassWithinDistrict(@ModelAttribute("passengerswithindistrict") Passengers passengers) {
		passengersService.save(passengers);
		return "epass-registered";
	}
	
	@GetMapping("/epasspassengerswithindistricts")
	public String epassFormPassWithinDistrict(Model model) {
		EpassForm epassForm = new EpassForm();	
		Passengers passengers = new Passengers();		
		model.addAttribute("epasswithindistrict", epassForm);
		model.addAttribute("passwithindistrict", passengers);
		return "epass-pass-within-district";
	}
	@PostMapping("/registerwithindistricts")
	public String addEpassPassengersWithinDistrict(@ModelAttribute("epasswithindistrict") EpassForm epassForm,@ModelAttribute("passengerswithindistrict") Passengers passengers) {
		EpassFormPassengersDTO dto=new EpassFormPassengersDTO();
		dto.setEpassId(epassForm.getEpassId());
		dto.setTravelReason(epassForm.getTravelReason());
		dto.setFromDate(epassForm.getFromDate());
		dto.setToDate(epassForm.getToDate());
		dto.setVehicleNumber(epassForm.getVehicleNumber());
		dto.setNumberOfPassengers(epassForm.getNumberOfPassengers());
		dto.setAppliedDate(epassForm.getAppliedDate());
		dto.setApprovalStatus(epassForm.getApprovalStatus());
		dto.setApprovedDate(epassForm.getApprovedDate());
		dto.setFromAddress(epassForm.getFromAddress());
		dto.setDestinationAddress(epassForm.getDestinationAddress());
		dto.setApplicationType(epassForm.getApplicationType());
		dto.setUserId(epassForm.getUserId());
		dto.setAdminId(epassForm.getAdminId());
		dto.setDistrictId(epassForm.getDistrictId());
		
		dto.setEpassId(passengers.getEpassId());
		dto.setPassengerName(passengers.getPassengerName());
		dto.setPassengerGender(passengers.getPassengerGender());
		dto.setDateOfBirth(passengers.getDateOfBirth());
		dto.setCovidSymptoms(passengers.getCovidSymptoms());
		dto.setIdProofType(passengers.getIdProofType());
		dto.setIdProofNumber(passengers.getIdProofNumber());
		epassFormService.addEpassAndPassengersWithinDistrict(dto);
//		epassFormService.save(epassForm);
//		passengersService.save(passengers);
		return "epass-registered";
	}

	@GetMapping("/getpassengersbyepassid")
	public String getPassengersByEpassId(@RequestParam("id") Integer id, Model model) {
		EpassFormPassengersDTO dto = epassFormService.getEpassAndPassengers(id);
		model.addAttribute("epass", dto.getEpassForm());
		model.addAttribute("getpassengers", dto.getPassengers());
		return "passengers-by-epassid";
	}
	
	@GetMapping("/getacrossdistrictbyepassid")
	public String getAcrossDistrictByEpassId(@RequestParam("id") Integer id, Model model) {
		EpassAcrossDistrictDTO dto = epassFormService.getAcrossDistrictEpass(id);
		model.addAttribute("epass", dto.getEpassForm());
		model.addAttribute("acrossdistrict", dto.getAcrossDistrict());
		return "acrossdistrict-by-epassid";
	}
	
	@GetMapping("/getoutsidestatebyepassid")
	public String getOutsideStateByEpassId(@RequestParam("id") Integer id, Model model) {
		EpassFormOutsideStateDTO dto = epassFormService.getOutsideStateEpass(id);
		model.addAttribute("epass", dto.getEpassForm());
		model.addAttribute("outsidestate", dto.getOutsideState());
		return "outsidestate-by-epassid";
	}

//	@GetMapping("/getpassengersbyepassid")
//	public String getPassengersByEpassId(@RequestParam("id") int id, Model model) {
//		EpassFormPassengersDTO dto = new EpassFormPassengersDTO();
//		model.addAttribute("getEpass", dto.getEpassForm());
//		model.addAttribute("getPassengers", dto.getPassengers());
//		return "passengers-by-epassid";
//	}
}
