package com.chainsys.epassManagementSystem.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.chainsys.epassManagementSystem.model.User;
import com.chainsys.epassManagementSystem.repository.UserRepository;

@Service
public class UserService {
	@Autowired
	private UserRepository userRepository;

	@Transactional
	public User save(User user) {
		return userRepository.save(user);
	}

	public User findById(int user_id) {
		return userRepository.findById(user_id);
	}

	@Transactional
	public void deleteById(int id) {
		userRepository.deleteById(id);
	}
	
	public List<User> getUsers() {
		List<User> listUsers = userRepository.findAll();
		return listUsers;
	}

//	public User getUserByIdAndPassword(int userId, String userPassword) {
//		 return userRepository.findByUserIdAndPassword(userId, userPassword);
//	}

}