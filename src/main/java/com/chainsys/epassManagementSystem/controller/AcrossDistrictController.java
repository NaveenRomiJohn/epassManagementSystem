package com.chainsys.epassManagementSystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.chainsys.epassManagementSystem.dto.EpassAcrossDistrictDTO;
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
