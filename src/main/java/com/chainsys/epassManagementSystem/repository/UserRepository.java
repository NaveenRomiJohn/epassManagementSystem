package com.chainsys.epassManagementSystem.repository;

import com.chainsys.epassManagementSystem.pojo.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, Integer>{
	User save(User user);
	
//	@Query("SELECT u FROM epass_user u WHERE u.user_id = ?1 and u.user_password = ?2")	
//	public User findByIdPassword(Integer user_id, String user_password);
}
