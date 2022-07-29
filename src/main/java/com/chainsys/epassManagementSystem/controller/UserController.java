package com.chainsys.epassManagementSystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import com.chainsys.epassManagementSystem.pojo.User;
import com.chainsys.epassManagementSystem.service.UserService;

@Controller
public class UserController {

	@Autowired
	public UserService userService;

	@GetMapping("/adduserform")
	public String showRegisterForm(Model model) {
		User user = new User();
		model.addAttribute("adduser", user);
		return "add-user-form";
	}

	@PostMapping("/adduser")
	public String addUser(@ModelAttribute("adduser") User user) {
		userService.save(user);
		return "user-registered";
	}

}
