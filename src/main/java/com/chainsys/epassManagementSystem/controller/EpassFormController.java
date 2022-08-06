package com.chainsys.epassManagementSystem.controller;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.chainsys.epassManagementSystem.dto.EpassFormOutsideStateDTO;
import com.chainsys.epassManagementSystem.dto.EpassFormPassengersDTO;
import com.chainsys.epassManagementSystem.model.EpassForm;
import com.chainsys.epassManagementSystem.model.OutsideState;
import com.chainsys.epassManagementSystem.model.Passengers;
import com.chainsys.epassManagementSystem.service.EpassFormService;
import com.chainsys.epassManagementSystem.service.OutsideStateService;
import com.chainsys.epassManagementSystem.service.PassengersService;

@Controller
public class EpassFormController {

	@Autowired
	public EpassFormService epassFormService;

	@Autowired
	public PassengersService passengersService;

	@Autowired
	public OutsideStateService outsideStateService;

//--------------------------form type---------------------------------------------------------------------------------
	@RequestMapping("/epassformtype")
	public String epassFormType() {
		return "epass-form-type";
	}

//-----------------------Epass within district------------------------------------------------------------------------
	
	@GetMapping("/epasspassengerswithindistrict")
	public String epassFormPassWithinDistrict(Model model) {
		EpassForm epassForm = new EpassForm();
		Passengers passengers = new Passengers();
		model.addAttribute("epasswithindistrict", epassForm);
		model.addAttribute("passwithindistrict", passengers);
		return "epass-pass-within-district";
	}

	@GetMapping("/registerwithindistrict")
	public String addEpassPassengersWithinDistrict(@RequestParam("epassId") Integer id,
			@RequestParam("numberOfPassengers") Integer noOfPass,
			@ModelAttribute("epasswithindistrict") EpassForm epassForm,
			@ModelAttribute("passwithindistrict") Passengers passengers) {
		EpassFormPassengersDTO dto = new EpassFormPassengersDTO();

		epassForm.setUserId(epassForm.getUserId());
		epassForm.setEpassId(id);
		epassForm.setTravelReason(epassForm.getTravelReason());
		epassForm.setFromDate(epassForm.getFromDate());
		epassForm.setToDate(epassForm.getToDate());
		epassForm.setApplicationType(epassForm.getApplicationType());

		epassForm.setFromDistrict(epassForm.getFromDistrict());
		epassForm.setFromAddress(epassForm.getFromAddress());
		epassForm.setDestinationAddress(epassForm.getDestinationAddress());
		epassForm.setVehicleNumber(epassForm.getVehicleNumber());
		epassForm.setNumberOfPassengers(epassForm.getNumberOfPassengers());
		epassForm.setAppliedDate(epassForm.getAppliedDate());
		epassForm.setApprovalStatus(epassForm.getApprovalStatus());
		epassForm.setAdminId(epassForm.getAdminId());
		dto.setEpassForm(epassForm);
//		List<Passengers> passengers=new ArrayList<Passengers>();
//		int nextAppId = passengersService.getNextPassenger();
		for (int i = 0; i < noOfPass; i++) {
			passengers.setEpassId(id);
			passengers.setPassengerName(passengers.getPassengerName());
			passengers.setPassengerGender(passengers.getPassengerGender());
			passengers.setDateOfBirth(passengers.getDateOfBirth());
			passengers.setCovidSymptoms(passengers.getCovidSymptoms());
			passengers.setIdProofType(passengers.getIdProofType());
			passengers.setIdProofNumber(passengers.getIdProofNumber());
			dto.addPassengers(passengers);
		}
		epassFormService.addEpassAndPassengersWithinDistrict(dto);
		return "epass-registered";
	}

//----------------------Epass across district--------------------------------------------------------------------------
	
	@GetMapping("/epasspassengersacrossdistricts")
	public String epassFormPassAcrossDistrict(Model model) {
		EpassForm epassForm = new EpassForm();
		Passengers passengers = new Passengers();
		model.addAttribute("epassacrossdistrict", epassForm);
		model.addAttribute("passengersacrossdistrict", passengers);
		return "epass-pass-across-district";
	}

	@GetMapping("/registeracrossdistrict")
	public String addEpassPassengersAcrossDistrict(@RequestParam("epassId") Integer id,
			@RequestParam("numberOfPassengers") Integer noOfPass,
			@ModelAttribute("epassacrossdistrict") EpassForm epassForm,
			@ModelAttribute("passengersacrossdistrict") Passengers passengers) {
		EpassFormPassengersDTO dto = new EpassFormPassengersDTO();

		epassForm.setUserId(epassForm.getUserId());
		epassForm.setEpassId(id);
		epassForm.setTravelReason(epassForm.getTravelReason());
		epassForm.setFromDate(epassForm.getFromDate());
		epassForm.setToDate(epassForm.getToDate());
		epassForm.setApplicationType(epassForm.getApplicationType());

		epassForm.setFromDistrict(epassForm.getFromDistrict());
		epassForm.setToDistrict(epassForm.getToDistrict());
		epassForm.setFromAddress(epassForm.getFromAddress());
		epassForm.setDestinationAddress(epassForm.getDestinationAddress());
		epassForm.setVehicleNumber(epassForm.getVehicleNumber());
		epassForm.setNumberOfPassengers(epassForm.getNumberOfPassengers());
		epassForm.setAppliedDate(epassForm.getAppliedDate());
		epassForm.setApprovalStatus(epassForm.getApprovalStatus());
		epassForm.setAdminId(epassForm.getAdminId());
		dto.setEpassForm(epassForm);
		for (int i = 0; i < noOfPass; i++) {
			passengers.setEpassId(id);
			passengers.setPassengerName(passengers.getPassengerName());
			passengers.setPassengerGender(passengers.getPassengerGender());
			passengers.setDateOfBirth(passengers.getDateOfBirth());
			passengers.setCovidSymptoms(passengers.getCovidSymptoms());
			passengers.setIdProofType(passengers.getIdProofType());
			passengers.setIdProofNumber(passengers.getIdProofNumber());
			dto.addPassengers(passengers);
		}
		epassFormService.addEpassAndPassengersWithinDistrict(dto);
		return "epass-registered";
	}

//------------------------Epass outside state--------------------------------------------------------------------------
	
	@GetMapping("/epasspassengersoutsidestate")
	public String epassFormPassOutsideState(Model model) {
		EpassForm epassForm = new EpassForm();
		OutsideState outsideState=new OutsideState();
		Passengers passengers = new Passengers();
		model.addAttribute("epassoutsidestate", epassForm);
		model.addAttribute("outsidestatedetails", outsideState);
		model.addAttribute("passengersoutsidestate", passengers);
		return "epass-pass-outside-state";
	}

	@GetMapping("/registeroutsidestate")
	public String addEpassPassengersOutsideState(@RequestParam("epassId") Integer id,
			@RequestParam("numberOfPassengers") Integer noOfPass,
			@ModelAttribute("epassoutsidestate") EpassForm epassForm,
			@ModelAttribute("outsidestatedetails") OutsideState outsideState,
			@ModelAttribute("passengersoutsidestate") Passengers passengers) {
		
		EpassFormOutsideStateDTO dto = new EpassFormOutsideStateDTO();
		epassForm.setUserId(epassForm.getUserId());
		epassForm.setEpassId(id);
		epassForm.setTravelReason(epassForm.getTravelReason());
		epassForm.setFromDate(epassForm.getFromDate());
		epassForm.setToDate(epassForm.getToDate());
		epassForm.setApplicationType(epassForm.getApplicationType());

		epassForm.setFromAddress(epassForm.getFromAddress());
		epassForm.setDestinationAddress(epassForm.getDestinationAddress());
		epassForm.setVehicleNumber(epassForm.getVehicleNumber());
		epassForm.setNumberOfPassengers(epassForm.getNumberOfPassengers());
		epassForm.setAppliedDate(epassForm.getAppliedDate());
		epassForm.setApprovalStatus(epassForm.getApprovalStatus());
		epassForm.setAdminId(epassForm.getAdminId());
		dto.setEpassForm(epassForm);

		outsideState.setEpassId(outsideState.getEpassId());
		outsideState.setFromState(outsideState.getFromState());
		outsideState.setToState(outsideState.getToState());
		outsideState.setQuarantineFromDate(outsideState.getQuarantineFromDate());
		outsideState.setQuarantineToDate(outsideState.getQuarantineToDate());
		outsideState.setQuarantineLocation(outsideState.getQuarantineLocation());
		outsideState.setPcrResultCertificateDate(outsideState.getPcrResultCertificateDate());
		outsideState.setPcrResultCertificateNumber(outsideState.getPcrResultCertificateNumber());
		outsideState.setPcrCertificateIssuedBy(outsideState.getPcrCertificateIssuedBy());
		dto.setOutsideState(outsideState);

		for (int i = 0; i < noOfPass; i++) {
			passengers.setEpassId(id);
			passengers.setPassengerName(passengers.getPassengerName());
			passengers.setPassengerGender(passengers.getPassengerGender());
			passengers.setDateOfBirth(passengers.getDateOfBirth());
			passengers.setCovidSymptoms(passengers.getCovidSymptoms());
			passengers.setIdProofType(passengers.getIdProofType());
			passengers.setIdProofNumber(passengers.getIdProofNumber());
			dto.addPassengers(passengers);
		}
		epassFormService.addEpassOutsideState(dto);
		return "epass-registered";
	}

	
	
//			get passengers by epass-id
	@GetMapping("/getpassengersbyepassid")
	public String getPassengersByEpassId(@RequestParam("id") Integer id, Model model) {
		EpassFormPassengersDTO dto = epassFormService.getEpassAndPassengers(id);
		model.addAttribute("epass", dto.getEpassForm());
		model.addAttribute("getpassengers", dto.getPassengers());
		return "passengers-by-epassid";
	}

//			@GetMapping("/getoutsidestatebyepassid")
//			public String getOutsideStateByEpassId(@RequestParam("id") Integer id, Model model) {
//				EpassFormOutsideStateDTO dto = epassFormService.getOutsideStateEpass(id);
//				model.addAttribute("epass", dto.getEpassForm());
//				model.addAttribute("outsidestate", dto.getOutsideState());
//				return "outsidestate-by-epassid";
//			}

//			@GetMapping("/getpassengersbyepassid")
//			public String getPassengersByEpassId(@RequestParam("id") int id, Model model) {
//				EpassFormPassengersDTO dto = new EpassFormPassengersDTO();
//				model.addAttribute("getEpass", dto.getEpassForm());
//				model.addAttribute("getPassengers", dto.getPassengers());
//				return "passengers-by-epassid";
//			}
}
