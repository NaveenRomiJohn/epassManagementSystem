package com.chainsys.epassManagementSystem.repository;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import com.chainsys.epassManagementSystem.pojo.Admin;

public interface AdminRepository extends CrudRepository<Admin, Integer>{
	Admin save(Admin dr);
	void deleteById(int admin_id);
	List<Admin> findAll();
	Admin findById(int admin_id);
}
