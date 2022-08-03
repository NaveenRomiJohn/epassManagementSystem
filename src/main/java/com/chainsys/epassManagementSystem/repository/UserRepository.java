package com.chainsys.epassManagementSystem.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.epassManagementSystem.model.Passengers;
import com.chainsys.epassManagementSystem.model.User;

@Repository
public interface UserRepository extends CrudRepository<User, Integer>{
	User save(User user);
	User findById(int userId);
	void deleteById(int userId);
	List<User>findAll();
}
