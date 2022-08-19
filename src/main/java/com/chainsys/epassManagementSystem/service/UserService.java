package com.chainsys.epassmanagementsystem.service;

import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.chainsys.epassmanagementsystem.model.User;
import com.chainsys.epassmanagementsystem.repository.UserRepository;

@Service
public class UserService {
	@Autowired
	private UserRepository userRepository;

	@Transactional
	public User save(User user) {
		return userRepository.save(user);
	}

	public Optional<User> findById(String userid) {
		return userRepository.findById(userid);
	}

	public List<User> getUsers() {
		return userRepository.findAll();
	}

	public User getUserByIdAndPassword(String userId, String userPassword) {
		return userRepository.findByUserIdAndUserPassword(userId, userPassword);
	}
}