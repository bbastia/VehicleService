package org.biswajit.controllers;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import java.util.ArrayList;
import java.util.List;

import org.biswajit.data.enitites.Nuser;
import org.biswajit.data.enitites.Project;
import org.biswajit.data.enitites.Sponsor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.StandardPasswordEncoder;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.security.provisioning.UserDetailsManager;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class HomeController {
	
	@Autowired
	JdbcUserDetailsManager jdbcUserDetailsManager;
	
	@Autowired
	@Qualifier("aboveAuthentication")
	AuthenticationManager authenticationManager;

	@RequestMapping("/")
	public String goHome(Model model){
		
		Project project = new Project();
		project.setName("Vehicle service Project");
		project.setSponsor(new Sponsor("biswajitbastia.com", "555-555-5555", "biswajit@above.com"));
		project.setDescription("This is a simple project sponsored by biswajitbastia");
		
		model.addAttribute("currentProject", project);
		
		return "home";
	}
	
	@RequestMapping("/login")
	public String login(){
		return "login";
	}
	
	@RequestMapping(value="/register",method=RequestMethod.GET)
	public String registerGet(){
		return "register";
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String registerPost(@ModelAttribute Nuser nuser,Model model){
		System.out.println(nuser.toString());
		
		List<GrantedAuthority> roles=new ArrayList<GrantedAuthority>();
		roles.add(new SimpleGrantedAuthority("ROLE_USER"));
		String encodedPassword=new BCryptPasswordEncoder().encode(nuser.getPassword());
		User user=new User(nuser.getUsername(), encodedPassword, roles);
		
		try {
			jdbcUserDetailsManager.createUser(user);
		} catch (DuplicateKeyException e) {
			model.addAttribute("error","error");
			return "register";
		}
		Authentication auth=new UsernamePasswordAuthenticationToken(user,nuser.getPassword(),user.getAuthorities());
		authenticationManager.authenticate(auth);
		
			SecurityContextHolder.getContext().setAuthentication(auth);
		
		return "home";
	}
}
