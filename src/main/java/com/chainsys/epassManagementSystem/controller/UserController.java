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
import com.chainsys.epassManagementSystem.pojo.User;
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
		model.addAttribute("adduser", user);
		return "add-user-form";
	}

	@PostMapping("/adduser")
	public String addUser(@ModelAttribute("adduser") User user1) {
		userService.save(user1);
		return "user-registered";
	}

//	user update
	@GetMapping("/updateuserform")
	public String showUpdateForm(@RequestParam("userid") Integer id, Model model) {
		User user = userService.findById(id);
		model.addAttribute("updateuser", user);
		return "update-user-form";
	}

	@PostMapping("/updateuser")
	public String updateUser(@ModelAttribute("updateuser") User user) {
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

	@RequestMapping("/userlogin")
	public String userLogin(@RequestParam("user_id") String id, @RequestParam("user_password") String password,
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
