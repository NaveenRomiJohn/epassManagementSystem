package com.chainsys.epassmanagementsystem.repository;

import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.epassmanagementsystem.model.User;

@Repository
public interface UserRepository extends CrudRepository<User, String>, JpaRepository<User, String> {
	User save(User user);

	Optional<User> findById(String userId);

	void deleteById(String userId);

	List<User> findAll();

	User findByUserIdAndUserPassword(String userId, String userPassword);

	Optional<User> findByEmail(String email);

}
