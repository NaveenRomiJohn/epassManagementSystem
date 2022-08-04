package com.chainsys.epassManagementSystem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.epassManagementSystem.dto.EpassAcrossDistrictDTO;
import com.chainsys.epassManagementSystem.dto.EpassFormPassengersDTO;
import com.chainsys.epassManagementSystem.model.AcrossDistrict;
import com.chainsys.epassManagementSystem.model.EpassForm;
import com.chainsys.epassManagementSystem.model.Passengers;
import com.chainsys.epassManagementSystem.repository.AcrossDistrictRepository;
import com.chainsys.epassManagementSystem.repository.EpassFormRepository;

@Service
public class AcrossDistrictService {
	@Autowired
	private AcrossDistrictRepository acrossDistrictRepository;

//	@Autowired
//	private EpassFormRepository epassFormRepository;

	public AcrossDistrict findById(int id) {
		return acrossDistrictRepository.findById(id);
	}
	
	@Transactional
	public AcrossDistrict save(AcrossDistrict acrossDistrict) {
		return acrossDistrictRepository.save(acrossDistrict);
	}

//	public EpassAcrossDistrictDTO getEpassAcrossDistrict(int id) {
//		AcrossDistrict acrossDistrict = acrossDistrictRepository.findById(id);
//		EpassAcrossDistrictDTO dto = new EpassAcrossDistrictDTO();
//		dto.setAcrossDistrict(acrossDistrict);
//		List<EpassForm> epassForm = epassFormRepository.findByAcrossDistrictDistrictId(id);
//		dto.setEpassForm(epassForm);
//		return dto;
//	}

}
