package com.chainsys.epassManagementSystem.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.epassManagementSystem.pojo.Admin;
import com.chainsys.epassManagementSystem.repository.AdminRepository;

@Service
public class AdminService {
	@Autowired
	private AdminRepository repo;

	public Admin save(Admin admin) {
		return repo.save(admin);
	}

	public List<Admin> getRequests() {
		List<Admin> reqList = repo.findAll();
		return reqList;
	}

	public Admin findById(int admin_id) {
		return repo.findById(admin_id);
	}

	public void deleteById(int admin_id) {
		repo.deleteById(admin_id);
	}
}
