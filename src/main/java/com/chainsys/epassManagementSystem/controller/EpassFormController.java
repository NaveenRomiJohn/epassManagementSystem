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
public class EpassFormController {

	@Autowired
	public EpassFormService epassFormService;
//	form type
	@RequestMapping("/epassformtype")
	public String addEpassFormType(Model model) {
		EpassForm epass = new EpassForm();
		model.addAttribute("epasstype", epass);
		return "epass-form-type";
	}
//	register
	@GetMapping("/epassformwithindistrict")
	public String epassFormWithinDistrict(Model model) {
		EpassForm epass = new EpassForm();
		model.addAttribute("epasswithindistrict", epass);
		return "epass-form-within-district";
	}

	@PostMapping("/registerwithindistrict")
	public String addEpass(@ModelAttribute("epasswithindistrict") EpassForm epass) {
		epassFormService.save(epass);
		return "epass-registered-within-district";
	}
}
