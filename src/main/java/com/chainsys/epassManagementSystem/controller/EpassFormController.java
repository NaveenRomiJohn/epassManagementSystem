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
	@RequestMapping("/epassFormType")
	public String epassFormType() {
		return "epass-form-type";
	}
//	register
	@GetMapping("/epassFormWithinDistrict")
	public String epassFormWithinDistrict(Model model) {
		EpassFormPassengersDTO dto = new EpassFormPassengersDTO();//epassFormService.getEpassFormAndPassengers() ;
		model.addAttribute("addEpass",dto.getEpassForm());
		model.addAttribute("addPassengers",dto.getPassengers());
		return "epass-form-within-district";
	}

	@PostMapping("/registerWithinDistrict")
	public String addEpassWithinDistrict(@ModelAttribute("epassWithinDistrict") EpassForm epass) {
		epassFormService.save(epass);
		return "epass-registered-within-district";
	}
}
