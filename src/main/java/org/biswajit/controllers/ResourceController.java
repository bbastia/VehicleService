package org.biswajit.controllers;

import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.biswajit.data.enitites.Resource;
import org.biswajit.validator.ResourceValidator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

@Controller
@RequestMapping("/resource")
@SessionAttributes("resource")
public class ResourceController {

	@RequestMapping("/add")
	public String add(Model model) {
		System.out.println("Invoking add()");
		
		return "resource_add";
	}
	
	@RequestMapping("/find")
	public String find(){
		if(1==1){
			throw new RuntimeException("Manually throwing an error ..");			
		}
		return "resource_add";
	}
	@ExceptionHandler(NullPointerException.class)
	public String handleError(HttpServletRequest request){
		return "controller_error";
	}

	@RequestMapping("/request")
	@ResponseBody
	public String request(@RequestBody Resource resource){
		System.out.println(resource);
		//Send out an email for request
		return "The request has been sent for approval";
	}
	
	@RequestMapping("/review")
	public String review(@Valid @ModelAttribute Resource resource,Errors error){
		if(error.hasErrors()){
			return "resource_add";
		}
		System.out.println("Invoking review()");
		return "resource_review";
	}
	
	@RequestMapping("/save")
	public String save(@ModelAttribute Resource resource, SessionStatus status) {
		System.out.println("Invoking save()");
		System.out.println(resource);
		status.setComplete();
		return "redirect:/resource/add";
	}


	@ModelAttribute("resource")
	public Resource getResource(){
		System.out.println("Adding a new resource to the model");
		return new Resource();
	}
	
	@ModelAttribute("typeOptions")
	public List<String> getTypes(){
		return new LinkedList<String>(Arrays.asList(new String[] {
				"Material", "Other", "Staff", "Technical Equipment" }));
	}
	
	@ModelAttribute("radioOptions")
	public List<String> getRadios(){
		return new LinkedList<String>(Arrays.asList(new String[]{
				"Hours", "Piece", "Tons"	
			}));
	}
	
	@ModelAttribute("checkOptions")
	public List<String> getChecks(){
		return new LinkedList<String>(Arrays.asList(new String[]{
				"Lead Time", "Special Rate", "Requires Approval"	
			}));
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder){
		binder.addValidators(new ResourceValidator());
	}
	
}
