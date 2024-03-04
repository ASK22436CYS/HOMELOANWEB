package com.homeloan.service;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.homeloan.beans.Roles;
import com.homeloan.beans.User;
import com.homeloan.dao.CustomerRepository;
import com.homeloan.dao.RoleRepository;
import com.homeloan.dto.CustomerLoginDto;
@Service
public class DefaultUserServiceImpl implements DefaultUserService{
	@Autowired
	private CustomerRepository customerrepository;
	@Autowired
	private RoleRepository roleRepository;
	
	private BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
	
	
	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		
		User cust = customerrepository.findByUserEmail(email);
		if(cust==null) {
			throw new UsernameNotFoundException("Invallid username and passwords");
		}
		return new org.springframework.security.core.userdetails.User(cust.getUserEmail(), cust.getPassword(), mapRolesToAuthorities(cust.getRoles()));	
	}

	private Collection<? extends GrantedAuthority> mapRolesToAuthorities(Set<Roles> roles){
		return roles.stream().map(role -> new SimpleGrantedAuthority(role.getRole())).collect(Collectors.toList());
	}

	@Override
	public User save(CustomerLoginDto customerLoginDto) {
	com.homeloan.beans.User user = new	User();
	user.setArea(customerLoginDto.getArea());
	user.setCountry(customerLoginDto.getCountry());
	Roles findByRole = roleRepository.findByRole("USER");
	user.setPassword(passwordEncoder.encode(customerLoginDto.getPassword()));
	System.out.println(passwordEncoder.encode(customerLoginDto.getPassword()));
	user.setUserEmail(customerLoginDto.getUserEmail());
	user.setPost(customerLoginDto.getPost());
	user.setCountry(customerLoginDto.getCountry());
	user.setPost(customerLoginDto.getPost());
	user.setState(customerLoginDto.getState());
	user.setUserAddress(customerLoginDto.getUserAddress());
	Set<Roles> roles = new HashSet<Roles>();
	roles.add(findByRole);
	user.setRoles(roles);
		return customerrepository.save(user);
	}
	

	
	

}
