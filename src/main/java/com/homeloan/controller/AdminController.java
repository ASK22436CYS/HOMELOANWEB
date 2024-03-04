package com.homeloan.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.homeloan.beans.User;
import com.homeloan.dao.CustomerRepository;

@Controller
@RequestMapping("/adminScreen")
public class AdminController {
	
	@Autowired
	CustomerRepository userRepository;
	
	
	
	@GetMapping
    public String displayDashboard(Model model){
		String user= returnUsername();
        model.addAttribute("userDetails", user);
        return "adminScreen";
    }
	
	private String returnUsername() {
		SecurityContext securityContext = SecurityContextHolder.getContext();
        UserDetails user = (UserDetails) securityContext.getAuthentication().getPrincipal();
User users = userRepository.findByUserEmail(user.getUsername());
		return users.getUserName();
	}
	
}