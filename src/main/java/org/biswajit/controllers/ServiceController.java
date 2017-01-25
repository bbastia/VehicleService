package org.biswajit.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ServiceController {

	
	
	@RequestMapping("/services")
	public String Servie(Model model){
	//	model.addAttribute("services",repo.count());
		return  "services";
	}
	
	@RequestMapping("/schedule")
	public String goSchedule(){
		return "schedule";
	}
}
