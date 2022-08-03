package com.chainsys.epassManagementSystem.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.chainsys.epassManagementSystem.model.User;

@Repository
public interface UserRepository extends CrudRepository<User, Integer>{
	User save(User user);
	User findById(int userId);
	void deleteById(int userId);
	
//	@Query("SELECT user_id = ?1 FROM epass_user")
//	public List<User> findByEMAIL(String email);
	
//	@Query("SELECT user_id = ?1 and u.user_password = ?2  FROM epass_user")	
//	public User findByIdPassword(Integer user_id, String user_password);
}
