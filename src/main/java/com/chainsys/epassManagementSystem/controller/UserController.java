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

import com.chainsys.epassManagementSystem.model.User;
import com.chainsys.epassManagementSystem.service.UserService;

@Controller
public class UserController {

	@Autowired
	public UserService userService;

//	home page
	@RequestMapping("/home")
	public String home() {
		return "home";
	}

//	user add form
	@GetMapping("/adduserform")
	public String showRegisterForm(Model model) {
		User user = new User();
		model.addAttribute("addUser", user);
		return "add-user-form";
	}

//	@PostMapping("/adduser")
//	public String addUser(@Valid @ModelAttribute("addUser") User user, BindingResult br) {
//		if (br.hasErrors()) {
//			return "add-user-form";
//		} else {
//			userService.save(user);
//			return "user-registered";
//		}
//
//	}
	@PostMapping("/adduser")
	public String addUser(@ModelAttribute("addUser") User user) {
		userService.save(user);
		return "user-registered";
	}

//	user update
	@GetMapping("/updateuserform")
	public String showUpdateForm(Model model) {
		User user = new User();
		model.addAttribute("updateUser", user);
		return "update-user-form";
	}

	@PostMapping("/updateuser")
	public String updateUser(@ModelAttribute("updateUser") User user) {
		userService.save(user);
		return "user-updated";
	}


//	user login
	@GetMapping("/userloginform")
	public String uerLoginForm(Model model) {
		User user = new User();
		model.addAttribute("userlogin", user);
		return "user-login";
	}

	@GetMapping("/userlogin")
	public String userLogin(@RequestParam("userId") String id,@RequestParam("userPassword") String pass) {
		if (id.equals("100") && pass.equals("user100")) {
			return "user-logged-in";
		} else {
			return "userloginform";
		}
	}

}