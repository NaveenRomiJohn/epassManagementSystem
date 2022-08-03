package com.chainsys.epassManagementSystem.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.epassManagementSystem.model.AcrossDistrict;
import com.chainsys.epassManagementSystem.repository.AcrossDistrictRepository;

@Service
public class AcrossDistrictService {
	@Autowired
	private AcrossDistrictRepository acrossDistrictRepository;
	
	public AcrossDistrict save(AcrossDistrict acrossDistrict) {
		return acrossDistrictRepository.save(acrossDistrict);
	}
}
