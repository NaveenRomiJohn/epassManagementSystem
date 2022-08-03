package com.chainsys.epassManagementSystem.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.epassManagementSystem.model.Passengers;
import com.chainsys.epassManagementSystem.repository.PassengersRepository;

@Service
public class PassengersService {
	
	@Autowired
	private PassengersRepository passengersRepository;
	
	public Passengers save(Passengers passengers) {
		return passengersRepository.save(passengers);
	}
	
	public List<Passengers> getPassengers(){
		List<Passengers> listPassengers=passengersRepository.findAll();
		return listPassengers;
	}
	
	public Passengers findById(int id) {

		return passengersRepository.findById(id);
	}
	@Transactional
	public void deleteById(int id) {
		passengersRepository.deleteById(id);
	}
}
