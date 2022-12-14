package com.chainsys.epassmanagementsystem.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.chainsys.epassmanagementsystem.model.EpassForm;
import com.chainsys.epassmanagementsystem.model.OutsideState;
import com.chainsys.epassmanagementsystem.model.Passengers;
import com.chainsys.epassmanagementsystem.service.EpassFormService;
import com.chainsys.epassmanagementsystem.service.OutsideStateService;
import com.chainsys.epassmanagementsystem.service.PassengersService;

@Controller
@RequestMapping("/epass")
public class EpassFormController {

	private static final String ADD = "redirect:/epass/noOfpassengers?id=";
	private static final String USERID = "userId";
	@Autowired
	public EpassFormService epassFormService;

	@Autowired
	public PassengersService passengersService;

	@Autowired
	public OutsideStateService outsideStateService;

	@GetMapping("/epassformtype")
	public String epassFormType(@RequestParam("userId")String userId,Model model) {
		model.addAttribute(USERID, userId);
		return "epass-form-type";
	}
//  within district
	@GetMapping("/epassformwithindistrict")
	public String epassFormWithinDistrict(@RequestParam("userId")String userId,Model model) {
		EpassForm epassForm = new EpassForm();
		model.addAttribute(USERID, userId);
		model.addAttribute("epasswithindistrict", epassForm);
		return "epass-form-within-district";
	}

	@PostMapping("/epassformwithinregistered")
	public String epassFormWithinDistrict( @ModelAttribute("epasswithindistrict") EpassForm epassForm,
			Model model) {
		epassFormService.save(epassForm);
		int id=epassForm.getEpassId();
		return ADD+id;
	}
	
// across district
	@GetMapping("/epassformacrossdistrict")
	public String epassFormAcrossDistrict(@RequestParam("userId")String userId,Model model) {
		EpassForm epassForm = new EpassForm();
		model.addAttribute(USERID, userId);
		model.addAttribute("epassacrossdistrict", epassForm);
		return "epass-form-across-district";
	}
	@PostMapping("/epassformacrossregistered")
	public String epassFormAcrossDistrict( @ModelAttribute("epassacrossdistrict") EpassForm epassForm, Model model) {
		epassFormService.save(epassForm);
		int id=epassForm.getEpassId();
		return  ADD+id;
	}

//	outside state
	@GetMapping("/epassformoutsidestate")
	public String epassFormOutsideState(@RequestParam("userId")String userId,
			Model model) {
		EpassForm epassForm = new EpassForm();
		model.addAttribute(USERID, userId);
		model.addAttribute("epassoutsidestate", epassForm);
		return "epass-form-outside-state";
	}

	@PostMapping("/epassformoutsidestateregistered")
	public String epassFormOutsideState( @ModelAttribute("epassoutsidestate") 
		EpassForm epassForm, Model model) {
		epassFormService.save(epassForm);
		OutsideState outsideState = new OutsideState();
		model.addAttribute("epassId", epassForm.getEpassId());
		model.addAttribute("outsidestatedetails", outsideState);
		return "epass-form-outside-state-details";
	}
	@PostMapping("/epassoutsidestate")
	public String addEpasssOutSideState(@ModelAttribute("outsidestatedetails")OutsideState outsideState,Model model) {
		outsideStateService.save(outsideState);
		int id=outsideState.getEpassId();
		return  ADD+id;
	}
//	number of passengers
	@GetMapping("/noOfpassengers")
	public String getpassengersDetails(@RequestParam("id")int epassId,Model model) {
		Passengers passengers = new Passengers();
		model.addAttribute("epassId", epassId);
		model.addAttribute("epasspassengers", passengers);
		List<Passengers> passengerList=passengersService.getPassengersByEpassid(epassId);
		model.addAttribute("passengersList", passengerList);
		return "epass-passengers";
	}

	@PostMapping("/epassregistered")
	public String passengersWithinDistrict(@ModelAttribute("passengerswithindistrict") Passengers passengers,Model model) {
		passengersService.save(passengers);
		int id=passengers.getEpassId();
		List<Passengers>passengerList=passengersService.getPassengersByEpassid(id);
		model.addAttribute("passengersList", passengerList);
		return  ADD+id;
	}
	
	@GetMapping("/getResult")
	public String getResult(@RequestParam("userId")String userId,Model model) {
		return "epass-registered";
	}
	
	@GetMapping("/getallpassengers")
	public String getAllPassengers(Model model) {
		List<Passengers> passengersList = passengersService.getPassengers();
		model.addAttribute("allpassengers", passengersList);
		return "list-all-passengers";
	}
}