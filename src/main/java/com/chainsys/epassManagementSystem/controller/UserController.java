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
import com.chainsys.epassmanagementsystem.model.EpassForm;
import com.chainsys.epassmanagementsystem.model.User;
import com.chainsys.epassmanagementsystem.service.EpassFormService;
import com.chainsys.epassmanagementsystem.service.UserService;

@Controller
@RequestMapping("/home")
public class UserController {

	public static final String LOGIN="user-login";
	public static final String USERID="userId";
	
	@Autowired
	public UserService userService;
	@Autowired
	public EpassFormService epassFormService;

//	home page
	@GetMapping("/index")
	public String home() {
		return "home";
	}

//	user add form
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

//	 user update
	@GetMapping("/updateuserform")
	public String showUpdateForm(@RequestParam("userId")String userId,Model model) {
		User user = new User();
		model.addAttribute(USERID, userId);
		model.addAttribute("updateuser", user);
		return "update-user-form";
	}

	@PostMapping("/updateuser")
	public String updateUser(@RequestParam("userId")String userId,@ModelAttribute("updateuser") User user) {
		userService.save(user);
		return "redirect:/home/userloggedin?userId="+user.getUserId();
	}

//	user login
	@GetMapping("/userloginform")
	public String userLoginForm(Model model) {
		User user = new User();
		model.addAttribute("userlogin", user);
		return LOGIN;
	}

	@GetMapping("/userloggedin")
	public String userLoggedIn(@RequestParam("userId")String userId,Model model) {
		model.addAttribute(USERID, userId);
		return "user-logged-in";
	}
	
	@PostMapping("/userlogin")
	public String userLogin(@ModelAttribute("userlogin") User user,Model model) {
		User user1 = userService.getUserByIdAndPassword(user.getUserId(), user.getUserPassword());
		try {
		if (user1 == null) {
			throw new InvalidInputDataException("No matching data found");
			} 
		}
		catch (InvalidInputDataException exception) {
			model.addAttribute("error", exception.getMessage());
			model.addAttribute("message", "User Id or Password is incorrect");
			return LOGIN;
		} 
		String userId=user1.getUserId();
		return "redirect:/home/userloggedin?userId="+userId;
	}

	@GetMapping("/userloginaccessdenied")
	public String userLoginDenied(Model model) {
		User user = new User();
		model.addAttribute("userlogin", user);
		return "user-log-in-denied";
	}

	@GetMapping("/epassapplicationstatus")
	public String userApplicationStatus(@RequestParam("userId") String id, Model model) {
		List<EpassForm> epassForm = epassFormService.findByUserId(id);
		model.addAttribute("epassForm", epassForm);
		return "user-application-status";
	}

}