package com.chainsys.epassManagementSystem.repository;

import com.chainsys.epassManagementSystem.pojo.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, Integer>{
	User save(User user);
}
