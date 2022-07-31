package com.chainsys.epassManagementSystem.repository;

import com.chainsys.epassManagementSystem.pojo.User;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, Integer>,JpaRepository<User, Integer>{
	User save(User user);
	User findById(int user_id);
	void deleteById(int user_id);
	
//	@Query("SELECT user_id = ?1 FROM epass_user")
//	public List<User> findByEMAIL(String email);
	
//	@Query("SELECT user_id = ?1 and u.user_password = ?2  FROM epass_user")	
//	public User findByIdPassword(Integer user_id, String user_password);
}
