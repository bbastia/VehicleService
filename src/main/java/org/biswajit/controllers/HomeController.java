package org.biswajit.controllers;

import org.biswajit.data.enitites.Project;
import org.biswajit.data.enitites.Sponsor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class HomeController {

	@RequestMapping("/")
	public String goHome(Model model){
		
		Project project = new Project();
		project.setName("Vehicle service Project");
		project.setSponsor(new Sponsor("Above-inc", "555-555-5555", "biswajit@above.com"));
		project.setDescription("This is a simple project sponsored by Above");
		
		model.addAttribute("currentProject", project);
		
		return "home";
	}
	
	@RequestMapping("/login")
	public String login(){
		return "login";
	}
	
}
