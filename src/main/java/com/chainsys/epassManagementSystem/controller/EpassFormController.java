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

import com.chainsys.epassManagementSystem.model.EpassForm;
import com.chainsys.epassManagementSystem.model.EpassFormPassengersDTO;
import com.chainsys.epassManagementSystem.model.Passengers;
import com.chainsys.epassManagementSystem.service.EpassFormService;

@Controller
public class EpassFormController {

	@Autowired
	public EpassFormService epassFormService;

//	form type
	@RequestMapping("/epassformtype")
	public String epassFormType() {
		return "epass-form-type";
	}

//	register
	@GetMapping("/epassformwithindistrict")
	public String epassFormWithinDistrict(Model model) {
		EpassFormPassengersDTO dto = new EpassFormPassengersDTO();// epassFormService.convertDataIntoDTO(EpassFormPassengersDTO
																	// dto);
		model.addAttribute("epasswithindistrict", dto);
		return "epass-form-within-district";
	}

	@PostMapping("/registerwithindistrict")
	public String addEpassWithinDistrict(@ModelAttribute("epasswithindistrict") EpassForm epassForm,
			Passengers passengers) {
		epassFormService.save(epassForm);
		return "epass-registered";
	}

	@GetMapping("/getpassengersbyepassid")
	public String getPassengersByEpassId(@RequestParam("id") int id, Model model) {
		EpassFormPassengersDTO dto = epassFormService.getEpassAndPassengers(id);
		model.addAttribute("getepass", dto.getEpassForm());
		model.addAttribute("getpassengers", dto.getPassengers());
		return "passengers-by-epassid";
	}

	@GetMapping("/getallepassform")
	public String getAllPassengers(Model model) {
		List<EpassForm> epassFormList = epassFormService.getAllEpassForm();
		model.addAttribute("allepassform", epassFormList);
		return "list-all-epassform";
	}

//	@GetMapping("/getpassengersbyepassid")
//	public String getPassengersByEpassId(@RequestParam("id") int id, Model model) {
//		EpassFormPassengersDTO dto = new EpassFormPassengersDTO();
//		model.addAttribute("getEpass", dto.getEpassForm());
//		model.addAttribute("getPassengers", dto.getPassengers());
//		return "passengers-by-epassid";
//	}
}
