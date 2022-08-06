package com.chainsys.epassManagementSystem.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.chainsys.epassManagementSystem.model.Admin;
import com.chainsys.epassManagementSystem.repository.AdminRepository;

@Service
public class AdminService {
	@Autowired
	private AdminRepository adminRepository;

	@Transactional
	public Admin save(Admin admin) {
		return adminRepository.save(admin);
	}

	public List<Admin> getRequests() {
		List<Admin> reqList = adminRepository.findAll();
		return reqList;
	}

	public Admin findById(int admin_id) {
		return adminRepository.findById(admin_id);
	}

	@Transactional
	public void deleteById(int admin_id) {
		adminRepository.deleteById(admin_id);
	}

}
