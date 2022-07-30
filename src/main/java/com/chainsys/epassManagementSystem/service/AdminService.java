package com.chainsys.epassManagementSystem.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.epassManagementSystem.pojo.Admin;
import com.chainsys.epassManagementSystem.repository.AdminRepository;
import com.chainsys.epassManagementSystem.repository.UserRepository;

@Service
public class AdminService {
	@Autowired
	private AdminRepository repo;
	
	public Admin save(Admin admin) {
		return repo.save(admin);
	}
}
