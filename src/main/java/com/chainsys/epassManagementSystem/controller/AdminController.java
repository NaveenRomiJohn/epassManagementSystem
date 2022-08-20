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
import com.chainsys.epassmanagementsystem.commonutil.InvalidInputDataException;
import com.chainsys.epassmanagementsystem.model.Admin;
import com.chainsys.epassmanagementsystem.model.EpassForm;
import com.chainsys.epassmanagementsystem.model.OutsideState;
import com.chainsys.epassmanagementsystem.model.Passengers;
import com.chainsys.epassmanagementsystem.model.User;
import com.chainsys.epassmanagementsystem.service.AdminService;
import com.chainsys.epassmanagementsystem.service.EpassFormService;
import com.chainsys.epassmanagementsystem.service.OutsideStateService;
import com.chainsys.epassmanagementsystem.service.PassengersService;
import com.chainsys.epassmanagementsystem.service.UserService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	public static final String LOGIN="admin-login";
	
	@Autowired
	public AdminService adminService;
	@Autowired
	public EpassFormService epassFormService;
	@Autowired
	public PassengersService passengersService;
	@Autowired
	public UserService userService;
	@Autowired
	public OutsideStateService outsideStateService;

//	admin login
	@GetMapping("/adminloginform")
	public String adminLoginForm(Model model) {
		Admin admin = new Admin();
		model.addAttribute("adminlogin", admin);
		return LOGIN;
	}

	@PostMapping("/adminlogin")
	public String adminLogin(@ModelAttribute("adminlogin") Admin admin,Model model) {
		Admin admin1 = adminService.getAdminByIdAndPassword(admin.getAdminId(), admin.getAdminPassword());
		try {
		if (admin1 == null) {
			throw new InvalidInputDataException("No matching data found");
			}
		}catch (InvalidInputDataException exception) {
			model.addAttribute("error", exception.getMessage());
			model.addAttribute("message", "Admin Id or Password is incorrect");
			return LOGIN;
		} 
		model.addAttribute("adminId", admin1.getAdminId());
		return "admin-logged-in";
	}

//	add admin
	@GetMapping("/addadminform")
	public String adminRegisterForm(Model model) {
		Admin admin = new Admin();
		model.addAttribute("addAdmin", admin);
		return "add-admin-form";
	}

	@PostMapping("/addadmin")
	public String addAdmin(@ModelAttribute("addadmin") Admin admin) {
		adminService.save(admin);
		return "admin-registered";
	}

//	update admin
	@GetMapping("/updateadminform")
	public String showUpdateForm(Model model) {
		Admin admin = new Admin();
		model.addAttribute("updateadmin", admin);
		return "update-admin-form";
	}

	@PostMapping("/updateadmin")
	public String updateAdmin(@ModelAttribute("updateadmin") Admin admin) {
		adminService.save(admin);
		return "admin-updated";
	}

//	delete admin
	@GetMapping("/deleteadminform")
	public String deleteAdminForm() {
		return "delete-admin";
	}

	@GetMapping("/deleteadmin")
	public String deleteAdmin(@RequestParam("adminId") String id) {
		adminService.deleteById(id);
		return "redirect:/admin/adminLogin";
	}

//	users list
	@GetMapping("/allusers")
	public String getAllUsers(Model model) {
		List<User> user = userService.getUsers();
		model.addAttribute("allusers", user);
		return "list-all-users";
	}

//all epass requests	
	@GetMapping("/epassrequests")
	public String getAllEpassRequests(Model model) {
		List<EpassForm> epassFormList = epassFormService.getAllEpassForm();
		List<OutsideState> outsideStateList = outsideStateService.getAllOutsideState();
		List<Passengers> passengersList = passengersService.getPassengers();
		model.addAttribute("allepassform", epassFormList);
		model.addAttribute("alloutsidestate", outsideStateList);
		model.addAttribute("allpassengers", passengersList);
		return "list-all-epassform";
	}

	@GetMapping("/epassprocessingstatus")
	public String userApplicationStatus(Model model) {
		List<EpassForm> epassForm = epassFormService.epassProcessing();
		model.addAttribute("epassFormProcessing", epassForm);
		return "epass-processing-list";
	}

	@GetMapping("/epassapprovedlist")
	public String epassApprovedStatus(Model model) {
		List<EpassForm> epassForm = epassFormService.epassApproved();
		model.addAttribute("epassFormApproved", epassForm);
		return "epass-approved-list";
	}

	@GetMapping("/epassrejectedlist")
	public String epassRejected(Model model) {
		List<EpassForm> epassForm = epassFormService.epassRejected();
		model.addAttribute("epassFormRejected", epassForm);
		return "epass-rejected-list";
	}

//	Epass status change
	@GetMapping("/statuschange")
	public String statusUpdateForm(@RequestParam("epassId") int id, Model model) {
		EpassForm epassForm = epassFormService.findById(id);
		model.addAttribute("epassstatus", epassForm);
		return "epass-update-form";
	}

	@PostMapping("/statuschanged")
	public String statusUpdated(@ModelAttribute("epassstatus") EpassForm epassform) {
		epassFormService.save(epassform);
		return "redirect:/admin/epassprocessingstatus";
	}

}