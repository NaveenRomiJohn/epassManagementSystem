package com.chainsys.epassmanagementsystem.controller;

import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.epassmanagementsystem.dto.EpassFormPassengersDTO;
import com.chainsys.epassmanagementsystem.model.EpassForm;
import com.chainsys.epassmanagementsystem.model.OutsideState;
import com.chainsys.epassmanagementsystem.model.Passengers;
import com.chainsys.epassmanagementsystem.service.EpassFormService;
import com.chainsys.epassmanagementsystem.service.OutsideStateService;
import com.chainsys.epassmanagementsystem.service.PassengersService;

@Controller
public class EpassFormController {

	@Autowired
	public EpassFormService epassFormService;

	@Autowired
	public PassengersService passengersService;

	@Autowired
	public OutsideStateService outsideStateService;

	@RequestMapping("/epassformtype")
	public String epassFormType() {
		return "epass-form-type";
	}

	@GetMapping("/epassformwithindistrict")
	public String epassFormWithinDistrict(Model model) {
		EpassForm epassForm = new EpassForm();
		model.addAttribute("epasswithindistrict", epassForm);
		return "epass-form-within-district";
	}

	@PostMapping("/epassformwithinregistered")
	public String epassFormWithinDistrict(@Valid @ModelAttribute("epasswithindistrict") EpassForm epassForm,
			Model model) {
		epassFormService.save(epassForm);
		Passengers passengers = new Passengers();
		model.addAttribute("epassId", epassForm.getEpassId());
		model.addAttribute("noOfPassengers", epassForm.getNumberOfPassengers());
		model.addAttribute("passengerswithindistrict", passengers);
		return "epass-passengers-within-district";
	}

	@PostMapping("/epasswithinregistered")
	public String passengersWithinDistrict(@ModelAttribute("passengerswithindistrict") Passengers passengers) {
		
		passengersService.save(passengers);
		return "epass-registered";
	}

	@GetMapping("/epassformacrossdistrict")
	public String epassFormAcrossDistrict(Model model) {
		EpassForm epassForm = new EpassForm();
		model.addAttribute("epassacrossdistrict", epassForm);
		return "epass-form-across-district";
	}

	@PostMapping("/epassformacrossregistered")
	public String epassFormAcrossDistrict(@Valid @ModelAttribute("epassacrossdistrict") EpassForm epassForm,
			Model model) {
		
		epassFormService.save(epassForm);
		Passengers passengers = new Passengers();
		model.addAttribute("epassId", epassForm.getEpassId());
		model.addAttribute("passengersacrossdistrict", passengers);
		return "epass-passengers-across-district";
	}

	@PostMapping("/epassacrossregistered")
	public String passengersAcrossDistrict( @ModelAttribute("passengersacrossdistrict") Passengers passengers) {
		passengersService.save(passengers);
		return "epass-registered";
	}

	@GetMapping("/epassformoutsidestate")
	public String epassFormOutsideState(Model model) {
		EpassForm epassForm = new EpassForm();
		model.addAttribute("epassoutsidestate", epassForm);
		return "epass-form-outside-state";
	}

	@PostMapping("/epassformoutsidestateregistered")
	public String epassFormOutsideState( @ModelAttribute("epassoutsidestate") EpassForm epassForm, Model model) {
		epassFormService.save(epassForm);
		OutsideState outsideState = new OutsideState();
		model.addAttribute("epassId", epassForm.getEpassId());
		model.addAttribute("outsidestatedetails", outsideState);
		return "epass-form-outside-state-details";
	}

	@PostMapping("/outsidestatedetailsregistered")
	public String epassFormOutsideState( @ModelAttribute("epassoutsidestate") OutsideState outsideState,
			Model model) {
		outsideStateService.save(outsideState);
		Passengers passengers = new Passengers();
		model.addAttribute("epassId", outsideState.getEpassId());
		model.addAttribute("passengersoutsidestate", passengers);
		return "epass-passengers-outside-state";
	}

	@PostMapping("/epassoutsidestateregistered")
	public String passengersOutsideState(@Valid @ModelAttribute("passengersacrossdistrict") Passengers passengers) {
		passengersService.save(passengers);
		return "epass-registered";
	}

	@GetMapping("/getpassengersbyepassid")
	public String getPassengersByEpassId(@RequestParam("id") Integer id, Model model) {
		EpassFormPassengersDTO dto = epassFormService.getEpassAndPassengers(id);
		model.addAttribute("epass", dto.getEpassForm());
		model.addAttribute("getpassengers", dto.getPassengers());
		return "passengers-by-epassid";
	}

}
