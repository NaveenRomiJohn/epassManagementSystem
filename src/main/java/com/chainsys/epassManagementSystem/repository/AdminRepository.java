package com.chainsys.epassManagementSystem.repository;

import org.springframework.data.repository.CrudRepository;
import com.chainsys.epassManagementSystem.pojo.Admin;
import com.chainsys.epassManagementSystem.pojo.User;

public interface AdminRepository extends CrudRepository<Admin, Integer>{
	Admin save(Admin admin);
	
}
