package com.chainsys.epassManagementSystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import com.chainsys.epassManagementSystem.model.AcrossDistrict;
import com.chainsys.epassManagementSystem.service.AcrossDistrictService;

@Controller
public class AcrossDistrictController {
	@Autowired
	public AcrossDistrictService acrossDistrictService;
	
//	register
	@GetMapping("/epassformacrossdistrict")
	public String epassFormAcrossDistrict() {
//		EpassFormPassengersDTO dto = new EpassFormPassengersDTO();//epassFormService.setEpassAndPassengers() ;
//		model.addAttribute("epassacrossdistrict",dto);
		return "epass-form-across-district";
	}

	@PostMapping("/registeracrossdistrict")
	public String addEpassAcrosssDistrict(@ModelAttribute("epasswithindistrict") AcrossDistrict acrossDistrict) {
		acrossDistrictService.save(acrossDistrict);
		return "epass-registered";
	}
}
