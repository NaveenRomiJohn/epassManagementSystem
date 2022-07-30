package com.chainsys.epassManagementSystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.chainsys.epassManagementSystem.pojo.EpassForm;
import com.chainsys.epassManagementSystem.service.EpassFormService;

@Controller
//@RequestMapping("/epassform")
public class EpassFormController {

	@Autowired
	public EpassFormService epassFormService;
	
	@GetMapping("/addepassform")
	public String addEpassForm(Model model) {
		EpassForm epass = new EpassForm();
		model.addAttribute("addepass", epass);
		return "add-epass-form";
	}

	@PostMapping("/addepass")
	public String addEpass(@ModelAttribute("addepass") EpassForm epass) {
		epassFormService.save(epass);
		return "epass-registered";
	}
}
