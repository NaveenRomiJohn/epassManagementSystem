package com.chainsys.epassManagementSystem.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.epassManagementSystem.model.Passengers;
import com.chainsys.epassManagementSystem.repository.PassengersRepository;

@Service
public class PassengersService {

	@Autowired
	private PassengersRepository passengersRepository;

	@Transactional
	public Passengers save(Passengers passengers) {
		return passengersRepository.save(passengers);
	}

	public List<Passengers> getPassengers() {
		return passengersRepository.findAll();
	}

}