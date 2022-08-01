package com.chainsys.epassManagementSystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.chainsys.epassManagementSystem.model.Admin;
import com.chainsys.epassManagementSystem.service.AdminService;

@Controller
public class AdminController {
	@Autowired
	public AdminService adminService;

//	login
	@RequestMapping("/adminLoginForm")
	public String adminLoginForm() {
		return "admin-login";
	}

	@RequestMapping("/adminLogin")
	public String adminLogin(@RequestParam("adminId") String id, @RequestParam("adminPassword") String password,
			Model model) {

		if (id.equals("nave3121") && password.equals("chainsys3121")) {
			return "admin-logged-in";
		} else {
			return "admin-login";
		}
	}

//	add admin
	@GetMapping("/addAdminForm")
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

	@PostMapping("/addAdmin")
	public String addAdmin(@ModelAttribute("addAdmin") Admin admin) {
		adminService.save(admin);
		return "admin-registered";
	}

//	update admin
	@GetMapping("/updateAdminForm")
	public String showUpdateForm(Model model) {
		Admin admin = new Admin();
		model.addAttribute("updateAdmin", admin);
		return "update-admin-form";
	}

	@PostMapping("/updateAdmin")
	public String updateAdmin(@ModelAttribute("updateAdmin") Admin admin) {
		adminService.save(admin);
		return "admin-updated";
	}

//	delete admin
	@RequestMapping("/deleteAdminForm")
	public String deleteAdminForm() {
		return "delete-admin";
	}

	@RequestMapping("/deleteAdmin")
	public String deleteAdmin(@RequestParam("adminId") int id) {
		adminService.deleteById(id);
		return "redirect:/adminLogin";
	}

//	epass requests

}
