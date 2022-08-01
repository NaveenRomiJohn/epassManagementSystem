package com.chainsys.epassManagementSystem.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.epassManagementSystem.model.EpassForm;
import com.chainsys.epassManagementSystem.model.Passengers;
import com.chainsys.epassManagementSystem.repository.EpassFormRepository;
import com.chainsys.epassManagementSystem.repository.PassengersRepository;

@Service
public class EpassFormService {
	@Autowired
	private EpassFormRepository epassFormRepository;
//	@Autowired
//	private PassengersRepository passengersRepositry;
	
	public EpassForm save(EpassForm epass) {
		return epassFormRepository.save(epass);
	}

}
