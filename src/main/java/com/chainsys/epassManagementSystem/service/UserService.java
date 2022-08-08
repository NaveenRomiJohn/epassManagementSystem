package com.chainsys.epassManagementSystem.service;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.epassManagementSystem.commonutil.InvalidInputDataException;
import com.chainsys.epassManagementSystem.commonutil.Validator;
import com.chainsys.epassManagementSystem.model.Admin;
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

	public User getUserByIdAndPassword(int userId, String userPassword) {
		return userRepository.findByUserIdAndUserPassword(userId, userPassword);
	}

//validate
//	public void userFormValidate(User user) {
//		
////		HttpServletRequest request=
//		PrintWriter out = response.getWriter();
//		try {
//			String id = request.getParameter("userId");
//			try {
//				Validator.checkStringForParseInt(id);
//			} catch (InvalidInputDataException err) {
//				out.print(err.getMessage());
//				return;
//			}
//			Integer userId = Integer.parseInt(id);
//			try {
//				Validator.checkNumberForGreaterThanZero(userId);
//			} catch (InvalidInputDataException err) {
//				out.print(err.getMessage());
//				return;
//			}
//			user.setUserId(userId);
//			
//			String fName = request.getParameter("firstName");
//			try {
//				Validator.checkStringOnly(fName);
//				Validator.checkCharLessThanTwenty(fName);
//			} catch (InvalidInputDataException err) {
//				out.print(err.getMessage());
//				return;
//			}
//			user.setFirstName(fName);
//
//			String lName = request.getParameter("lastName");
//			try {
//				Validator.checkStringOnly(lName);
//				Validator.checkCharLessThanTwenty(lName);
//			} catch (InvalidInputDataException err) {
//				out.print(err.getMessage());
//				return;
//			}
//			user.setLastName(lName);
//			
//			String gender = request.getParameter("gender");
//			user.setGender(gender);
//			
//			String age = request.getParameter("age");
//			Integer age1=Integer.parseInt(age);
////			try {
////				Validator.checkStringOnly(age1);
////				Validator.checkCharLessThanTwenty(age1);
////			} catch (InvalidInputDataException err) {
////				out.print(err.getMessage());
////				return;
////			}
//			user.setAge(age1);
//			
//			String eMail = request.getParameter("email");
//			try {
//				Validator.checkEmail(eMail);
//			} catch (InvalidInputDataException err) {
//				out.print(err.getMessage());
//				return;
//			}
//			user.setEmail(eMail);
//			
//			
//	}

}