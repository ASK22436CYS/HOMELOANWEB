package com.homeloan.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.homeloan.beans.User;

@Repository
public interface CustomerRepository extends JpaRepository<User, Integer>{

	User findByUserEmail(String email);
	
}
