	package com.homeloan.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.homeloan.dto.CustomerLoginDto;
import com.homeloan.dto.LoginDto;
import com.homeloan.service.DefaultUserService;

@Controller
@RequestMapping("/login")
public class LoginController {
@Autowired
	private DefaultUserService userService;

    @ModelAttribute("user")
    public LoginDto userLoginDTO() {
        return new LoginDto();
    }
    
	@GetMapping
	public String login() {
		return "login";
	}
	
	@PostMapping
	public void  loginUser(@ModelAttribute("user") 
	LoginDto LoginDto) {
		System.out.println("LoginDto:::::"+LoginDto.toString());
	 userService.loadUserByUsername(LoginDto.getUsername());
	}
}