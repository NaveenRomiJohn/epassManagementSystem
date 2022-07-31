package com.chainsys.epassManagementSystem.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.epassManagementSystem.pojo.Admin;
import com.chainsys.epassManagementSystem.service.AdminService;

@Controller
public class AdminController {
	@Autowired
	public AdminService adminService;

//	login
	@RequestMapping("/adminloginform")
	public String adminLogIn() {
		return "admin-login";
	}

	@RequestMapping("/adminlogin")
	public String userLogin(@RequestParam("admin_id") String id, @RequestParam("admin_password") String password,
			Model model) {

		if (id.equals("nave3121") && password.equals("chainsys3121")) {
			return "admin-logged-in";
		} else {
			return "admin-login";
		}
	}

//	add admin
	@GetMapping("/addadminform")
	public String showRegisterForm(Model model) {
		Admin admin = new Admin();
		model.addAttribute("addadmin", admin);
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
	public String addUser(@Valid @ModelAttribute("addadmin") Admin admin, BindingResult result) {
		if (result.hasErrors()) {
			return "add-admin-form";
		} else {
			adminService.save(admin);
			return "admin-registered";
		}
	}

//	update admin
	@GetMapping("/updateadminform")
	public String showUpdateForm(Model model) {
		Admin admin = new Admin();
		model.addAttribute("updateadmin", admin);
		return "update-admin-form";
	}

	@PostMapping("/updateadmin")
	public String updateAdmin(@ModelAttribute("updatedoctor") Admin admin) {
		adminService.save(admin);
		return "admin-updated";
	}

//	delete admin
	@RequestMapping("/deleteadminform")
	public String deleteAdminForm() {
		return "delete-admin";
	}

	@RequestMapping("/deleteadmin")
	public String deleteAdmin(@RequestParam("admin_id") int id) {
		adminService.deleteById(id);
		return "redirect:/adminlogin";
	}

//	epass requests

}
