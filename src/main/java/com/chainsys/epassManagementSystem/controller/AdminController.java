package com.chainsys.epassManagementSystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.chainsys.epassManagementSystem.pojo.Admin;
import com.chainsys.epassManagementSystem.service.AdminService;

@Controller
public class AdminController {
	@Autowired
	public AdminService adminService;

	@RequestMapping("/adminlogin")
	public String home() {
		return "admin-login";
	}

	@GetMapping("/addadminform")
	public String showRegisterForm(Model model) {
		Admin admin = new Admin();
		model.addAttribute("addadmin", admin);
		return "add-admin-form";
	}

	@PostMapping("/addadmin")
	public String addUser(@ModelAttribute("addadmin") Admin admin) {
		adminService.save(admin);
		return "admin-registered";
	}
}
