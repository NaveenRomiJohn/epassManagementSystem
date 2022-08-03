package com.chainsys.epassManagementSystem.repository;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.chainsys.epassManagementSystem.model.Admin;

@Repository
public interface AdminRepository extends CrudRepository<Admin, Integer>{
	Admin save(Admin admin);
	void deleteById(int adminId);
	List<Admin> findAll();
	Admin findById(int adminId);
}
