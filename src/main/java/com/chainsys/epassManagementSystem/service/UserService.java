package com.chainsys.epassManagementSystem.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.epassManagementSystem.pojo.User;
import com.chainsys.epassManagementSystem.repository.UserRepository;

@Service
public class UserService {
	@Autowired
	private UserRepository userrepo;
	
	public User save(User user) {
		return userrepo.save(user);
	}
	
	public User findById(int user_id) {
		return userrepo.findById(user_id);
	}
	
	public void deleteById(int id) {
		userrepo.deleteById(id);
	}
	
//	public User findByUseridPassword(Integer user_id, String user_password) {
//		return userrepo.findByIdPassword(user_id, user_password);
//	}
}
