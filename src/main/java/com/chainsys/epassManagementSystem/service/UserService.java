package com.chainsys.epassManagementSystem.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.epassManagementSystem.pojo.User;
import com.chainsys.epassManagementSystem.repository.UserRepository;

@Service
public class UserService {
	@Autowired
	private UserRepository repo;
	
	public User save(User user) {
		return repo.save(user);
	}
}
