package com.homeloan.service;

import org.springframework.security.core.userdetails.UserDetailsService;

import com.homeloan.beans.User;
import com.homeloan.dto.CustomerLoginDto;

public interface DefaultUserService extends UserDetailsService{

	User save(CustomerLoginDto User);
	 
}
