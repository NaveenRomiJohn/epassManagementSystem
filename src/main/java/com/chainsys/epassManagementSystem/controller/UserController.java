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
import com.chainsys.epassManagementSystem.model.EpassForm;
import com.chainsys.epassManagementSystem.model.User;
import com.chainsys.epassManagementSystem.service.EpassFormService;
import com.chainsys.epassManagementSystem.service.UserService;

@Controller
public class UserController {

	@Autowired
	public UserService userService;
	@Autowired
	public EpassFormService epassFormService;

//	home page
	@RequestMapping("/home")
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
	public String addUser(@Valid @ModelAttribute("adduser") User user, BindingResult br) {
		if (br.hasErrors()) {
			return "add-user-form";
		} else {
			userService.save(user);
			return "user-registered";
		}

	}
//	@PostMapping("/adduser")
//	public String addUser(@ModelAttribute("adduser") User user) {
//		userService.save(user);
//		return "user-registered";
//	}

//	user update
	@GetMapping("/updateuserform")
	public String showUpdateForm(Model model) {
		User user = new User();
		model.addAttribute("updateuser", user);
		return "update-user-form";
	}

	@PostMapping("/updateuser")
	public String updateUser(@ModelAttribute("updateuser") User user) {
		userService.save(user);
		return "user-updated";
	}
	
//	@PostMapping("/updateuser")
//	public String updateUser(@ModelAttribute("updateuser") User user) {
//		userService.userFormValidate(user);
//		return "user-updated";
//	}


//	user login
	@GetMapping("/userloginform")
	public String userLoginForm(Model model) {
		User user = new User();
		model.addAttribute("userlogin", user);
		return "user-login";
	}

	@GetMapping("/userloggedin")
    public String getIndex(Model model) {
        return "user-logged-in";
    }
	
	@PostMapping("/userlogin")
	public String userLogin(@ModelAttribute("userlogin") User user) {
		User user1=userService.getUserByIdAndPassword(user.getUserId(), user.getUserPassword());
		if (user1 != null) {
			return "redirect:/userloggedin";
		} else {
			return "redirect:/userloginform";
		}
	}
	
	@GetMapping("/epassapplicationstatus")
	public String userApplicationStatus(@RequestParam("epassId") Integer id, Model model) {
		EpassForm epassForm = epassFormService.findById(id);
		model.addAttribute("epassForm", epassForm);
		return "user-application-status";
	}

}