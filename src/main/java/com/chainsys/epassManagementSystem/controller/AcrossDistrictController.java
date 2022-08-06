package com.chainsys.epassManagementSystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import com.chainsys.epassManagementSystem.model.EpassForm;
import com.chainsys.epassManagementSystem.model.Passengers;
import com.chainsys.epassManagementSystem.service.AcrossDistrictService;
import com.chainsys.epassManagementSystem.service.EpassFormService;
import com.chainsys.epassManagementSystem.service.PassengersService;

@Controller
public class AcrossDistrictController {
//	@Autowired
//	public AcrossDistrictService acrossDistrictService;
//	@Autowired
//	public EpassFormService epassFormService;
//	@Autowired
//	public PassengersService passengersService;

//	register
//	@GetMapping("/epassformacrossdistrict")
//	public String epassFormAcrossDistrict() {
//		EpassFormPassengersDTO dto = new EpassFormPassengersDTO();//epassFormService.setEpassAndPassengers() ;
//		model.addAttribute("epassacrossdistrict",dto);
//		return "epass-form-across-district";
//	}

////	across district register
//	@GetMapping("/epassformacrossdistrict")
//	public String epassFormAcrossDistrict(Model model) {
//		EpassForm epassForm = new EpassForm();
//		model.addAttribute("epassformacrossdistrict", epassForm);
//		return "epass-form-across-district";
//	}
//
//	@GetMapping("/passengersacrossdistrict")
//	public String passengersAcrossDistrict(@ModelAttribute("epasswithindistrict") EpassForm epassForm, Model model) {
//		epassFormService.save(epassForm);
//		Passengers passengers = new Passengers();
//		model.addAttribute("passengersacrossdistrict", passengers);
//		return "epass-passengers-form";
//	}
//
//	@PostMapping("/registerwithindistrict")
//	public String addEpassAcrossDistrict(@ModelAttribute("passengerswithindistrict") Passengers passengers) {
//		passengersService.save(passengers);
//		return "epass-registered";
//	}

//	@PostMapping("/registeracrossdistrict")
//	public String addEpassAcrosssDistrict(@ModelAttribute("epasswithindistrict") AcrossDistrict acrossDistrict) {
//		acrossDistrictService.save(acrossDistrict);
//		return "epass-registered";
//	}

//	@GetMapping("/acrossdistrictbyepassid")
//	public String acrossDistrictByEpassId(@RequestParam("id") int id, Model model) {
//		EpassAcrossDistrictDTO dto = acrossDistrictService.getEpassAcrossDistrict(id);
//		model.addAttribute("acrossdistrict", dto.getAcrossDistrict());
//		model.addAttribute("getepass", dto.getEpassForm());
//		return "acrossdistrict-by-epassid";
//	}
}
