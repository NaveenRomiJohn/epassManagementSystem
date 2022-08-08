package com.chainsys.epassManagementSystem.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.chainsys.epassManagementSystem.model.User;

@Repository
public interface UserRepository extends CrudRepository<User, Integer>, JpaRepository<User, Integer> {
	User save(User user);

	User findById(int userId);

	void deleteById(int userId);

	List<User> findAll();

	User findByUserIdAndUserPassword(int userId, String userPassword);

}
