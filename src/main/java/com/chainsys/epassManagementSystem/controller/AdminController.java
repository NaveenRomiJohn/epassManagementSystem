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
import com.chainsys.epassManagementSystem.model.Admin;
import com.chainsys.epassManagementSystem.model.EpassForm;
import com.chainsys.epassManagementSystem.model.OutsideState;
import com.chainsys.epassManagementSystem.model.Passengers;
import com.chainsys.epassManagementSystem.model.User;
import com.chainsys.epassManagementSystem.service.AdminService;
import com.chainsys.epassManagementSystem.service.EpassFormService;
import com.chainsys.epassManagementSystem.service.OutsideStateService;
import com.chainsys.epassManagementSystem.service.PassengersService;
import com.chainsys.epassManagementSystem.service.UserService;

@Controller
public class AdminController {
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
		Admin admin=new Admin();
		model.addAttribute("adminlogin", admin);
		return "admin-login";
	}

	@GetMapping("/adminloggedin")
    public String getIndex(Model model) {
        return "admin-logged-in";
    }
	
	@PostMapping("/adminlogin")
	public String adminLogin(@ModelAttribute("adminlogin") Admin admin) {
		Admin admin1=adminService.getAdminByIdAndPassword(admin.getAdminId(), admin.getAdminPassword());
		if (admin1 != null) {
			return "redirect:/adminloggedin";
		} else {
			return "redirect:/adminloginform";
		}
	}

//	add admin
	@GetMapping("/addadminform")
	public String adminRegisterForm(Model model) {
		Admin admin = new Admin();
		model.addAttribute("addAdmin", admin);
		return "add-admin-form";
	}

//	@RequestMapping(value = "/submit", method = RequestMethod.POST)
//    public String submit(@Valid @ModelAttribute("welcome") Welcome welcome, BindingResult result) {
//          
//        if (result.hasErrors()) {
//            return "welcome";
//        }
//        else {
//            return "summary";
//        }
//    }

	@PostMapping("/addadmin")
	public String addAdmin(@ModelAttribute("addAdmin") Admin admin) {
		adminService.save(admin);
		return "admin-registered";
	}

//	update admin
	@GetMapping("/updateadminform")
	public String showUpdateForm(Model model) {
		Admin admin = new Admin();
		model.addAttribute("updateAdmin", admin);
		return "update-admin-form";
	}

	@PostMapping("/updateadmin")
	public String updateAdmin(@ModelAttribute("updateAdmin") Admin admin) {
		adminService.save(admin);
		return "admin-updated";
	}

//	delete admin
	@RequestMapping("/deleteadminform")
	public String deleteAdminForm() {
		return "delete-admin";
	}

	@RequestMapping("/deleteadmin")
	public String deleteAdmin(@RequestParam("adminId") int id) {
		adminService.deleteById(id);
		return "redirect:/adminLogin";
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
		model.addAttribute("epassForm", epassForm);
		return "epass-processing-list";
	}
	
	@GetMapping("/epassapprovedlist")
	public String epassApprovedStatus(Model model) {
		List<EpassForm> epassForm = epassFormService.epassApproved();
		model.addAttribute("epassForm", epassForm);
		return "epass-approved-list";
	}
	
	@GetMapping("/epassrejectedlist")
	public String epassRejected(Model model) {
		List<EpassForm> epassForm = epassFormService.epassRejected();
		model.addAttribute("epassForm", epassForm);
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
	public String statusUpdated(@ModelAttribute("epassstatus") EpassForm epassForm) {
		epassFormService.save(epassForm);
		return "redirect:/epassprocessingstatus";
	}
	
}
