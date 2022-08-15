package com.chainsys.epassmanagementsystem.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.chainsys.epassmanagementsystem.model.Passengers;
import com.chainsys.epassmanagementsystem.service.PassengersService;

@Controller
public class PassengersController {
	
	@Autowired
	private PassengersService passengersService;

	@GetMapping("/getallpassengers")
	public String getAllPassengers(Model model) {
		List<Passengers> passengersList = passengersService.getPassengers();
		model.addAttribute("allpassengers", passengersList);
		return "list-all-passengers";
	}
	
	@GetMapping("/getpassengers")
	public String getPassengers() {
		return "NewFile";
	}
}