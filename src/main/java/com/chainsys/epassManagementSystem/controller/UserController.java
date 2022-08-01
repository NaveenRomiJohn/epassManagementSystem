package com.chainsys.epassManagementSystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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

//	user add
	@GetMapping("/adduserform")
	public String showRegisterForm(Model model) {
		User user = new User();
		model.addAttribute("addUser", user);
		return "add-user-form";
	}

	@PostMapping("/addUser")
	public String addUser(@ModelAttribute("addUser") User user) {
		userService.save(user);
		return "user-registered";
	}

//	user update
	@GetMapping("/updateUserForm")
	public String showUpdateForm(Model model) {
		User user = new User();
		model.addAttribute("updateUser", user);
		return "update-user-form";
	}

	@PostMapping("/updateUser")
	public String updateUser(@ModelAttribute("updateUser") User user) {
		userService.save(user);
		return "user-updated";
	}

//	delete user

//	@GetMapping("/deleteuser")
//	public String deleteUser(@RequestParam("userid") int id) {
//		userService.deleteById(id);
//		return "user-deleted";
//	}

//	user login
	@RequestMapping("/userloginform")
	public String getLogin() {
		return "user-login";
	}

	@GetMapping("/userLogin")
	public String userLogin(@RequestParam("userId") String id, @RequestParam("userPassword") String password,
			Model model) {

		if (id.equals("user100") && password.equals("arav100")) {
			return "user-logged-in";
		} else {
			return "user-login";
		}
	}

//	@GetMapping(value = "/logout")
//	public String logout_user(HttpSession session) {
//		session.removeAttribute("userid");
//		session.invalidate();
//		return "redirect:/login";
//	}
}
