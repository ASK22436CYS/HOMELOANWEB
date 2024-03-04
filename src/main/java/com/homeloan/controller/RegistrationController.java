package com.homeloan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.homeloan.beans.User;
import com.homeloan.dto.CustomerLoginDto;
import com.homeloan.dto.CustomerRegisteration;
import com.homeloan.service.DefaultUserService;

@Controller
@RequestMapping("/registration")
public class RegistrationController {

	 private DefaultUserService userService;

	    public RegistrationController(DefaultUserService userService) {
	        super();
	        this.userService = userService;
	    }

	    @ModelAttribute("user")
	    public CustomerRegisteration userRegistrationDto() {
	        return new CustomerRegisteration();
	    }

	    @GetMapping
	    public String showRegistrationForm(Model model) {
	    	model.addAttribute("customerLoginDto", new CustomerLoginDto());
	        return "register";
	    }

	    @PostMapping
	    public String registerUserAccount(@ModelAttribute("users") 
	    CustomerLoginDto customerLoginDto) {
	    	System.out.println(customerLoginDto);
	        User save = userService.save(customerLoginDto);
	        
	        System.out.println(save);
	        return "redirect:/login";
//	        return "";
	    }
	    
//	    @PostMapping("/saveUser")
//	    public String register(@ModelAttribute("user") 
//	    User registrationDto) {
//	    	System.out.println(registrationDto);
//	        User save = userService.save(registrationDto);
//	        
//	        System.out.println(save);
//	        return "redirect:/login";
//	    }
}