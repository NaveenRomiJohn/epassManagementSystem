package com.chainsys.epassManagementSystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.epassManagementSystem.pojo.User;
import com.chainsys.epassManagementSystem.service.UserService;

@Controller
public class UserController {

	@Autowired
	public UserService userService;

	@RequestMapping("/")
	public String home()
	{
		return "home";
	} 
	
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

//	@GetMapping("/login")
//	public String getUser(Model model) {
//		User user = userService.findByUseridPassword(id, pass);
//		model.addAttribute("getuser", user);
//		return "user-login";
//	}
	@RequestMapping("/userloginform")
	public String getLogin()
	{
		return "user-login";
	}
	
//	@PostMapping("/userlogin")
//	public String loginUser(@RequestParam("user_id") Integer userid, @RequestParam("password") String password,
//			Model model) {
//		User user = new User();
////		User user = userService.findByUseridPassword(userid, password);
//		Integer uid = user.getUser_id();
//		String upass = user.getUser_password();
//
//		if (userid.equals(uid) && password.equals(upass)) {
//			model.addAttribute("loginuser", userid);
//			return "user-logged-in";
//		} else {
//			return "login";
//		}
//	}

//	@GetMapping(value = "/logout")
//	public String logout_user(HttpSession session) {
//		session.removeAttribute("username");
//		session.invalidate();
//		return "redirect:/login";
//	}
}
