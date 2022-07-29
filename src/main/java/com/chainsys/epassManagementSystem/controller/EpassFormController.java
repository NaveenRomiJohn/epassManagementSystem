package com.chainsys.epassManagementSystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.chainsys.epassManagementSystem.dao.EpassFormDao;
import com.chainsys.epassManagementSystem.pojo.EpassForm;

@Controller
@RequestMapping("/epassform")
public class EpassFormController {

	@GetMapping("/addepassform")
	public String addEpassForm(Model model) {
		EpassForm epass = new EpassForm();
		model.addAttribute("addepass", epass);
		return "add-epass-form";
	}

	@PostMapping("/addepass")
	public String addEpass(@ModelAttribute("addepass") EpassForm epass) {
		EpassFormDao.insertEpassForm(epass);
		return "epass-registered";
	}
}
