package com.chainsys.epassManagementSystem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.epassManagementSystem.model.Passengers;
import com.chainsys.epassManagementSystem.model.User;
import com.chainsys.epassManagementSystem.repository.UserRepository;

@Service
public class UserService {
	@Autowired
	private UserRepository userRepository;

	public User save(User user) {
		return userRepository.save(user);
	}

	public User findById(int user_id) {
		return userRepository.findById(user_id);
	}

	public void deleteById(int id) {
		userRepository.deleteById(id);
	}
	
	public List<User> getUsers() {
		List<User> listUsers = userRepository.findAll();
		return listUsers;
	}

//	public User findByUseridPassword(Integer user_id, String user_password) {
//		return userRepository.findByIdPassword(user_id, user_password);
//	}
}