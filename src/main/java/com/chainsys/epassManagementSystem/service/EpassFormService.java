package com.chainsys.epassManagementSystem.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.chainsys.epassManagementSystem.dto.EpassAcrossDistrictDTO;
import com.chainsys.epassManagementSystem.dto.EpassFormOutsideStateDTO;
import com.chainsys.epassManagementSystem.dto.EpassFormPassengersDTO;
import com.chainsys.epassManagementSystem.model.AcrossDistrict;
import com.chainsys.epassManagementSystem.model.EpassForm;
import com.chainsys.epassManagementSystem.model.OutsideState;
import com.chainsys.epassManagementSystem.model.Passengers;
import com.chainsys.epassManagementSystem.repository.AcrossDistrictRepository;
import com.chainsys.epassManagementSystem.repository.EpassFormRepository;
import com.chainsys.epassManagementSystem.repository.OutsideStateRepository;
import com.chainsys.epassManagementSystem.repository.PassengersRepository;

@Service
public class EpassFormService {
	@Autowired
	private EpassFormRepository epassFormRepository;

	@Autowired
	private PassengersRepository passengersRepositry;

	@Autowired
	private AcrossDistrictRepository acrossDistrictRepository;

	@Autowired
	private OutsideStateRepository outsideStateRepository;

	@Transactional
	public EpassForm save(EpassForm epass) {
		return epassFormRepository.save(epass);
	}

	public List<EpassForm> getAllEpassForm() {
		List<EpassForm> listEpassForm = epassFormRepository.findAll();
		return listEpassForm;
	}

	public EpassForm findById(int id) {
		return epassFormRepository.findById(id);
	}

	@Transactional
	public void deleteById(int id) {
		epassFormRepository.deleteById(id);
	}

	public EpassFormPassengersDTO getEpassAndPassengers(int id) {
		EpassForm epassForm = epassFormRepository.findById(id);
		EpassFormPassengersDTO dto = new EpassFormPassengersDTO();
		dto.setEpassForm(epassForm);
		List<Passengers> pass = passengersRepositry.findByEpassformEpassId(id);
		dto.setPassengers(pass);
		return dto;
	}

	public EpassAcrossDistrictDTO getAcrossDistrictEpass(int id) {
		EpassForm epassForm = epassFormRepository.findById(id);
		EpassAcrossDistrictDTO dto = new EpassAcrossDistrictDTO();
		dto.setEpassForm(epassForm);
		List<AcrossDistrict> pass = acrossDistrictRepository.findAcrossDistrictByEpassId(id);
		dto.setAcrossDistrict(pass);
		return dto;
	}

	public EpassFormOutsideStateDTO getOutsideStateEpass(int id) {
		EpassForm epassForm = epassFormRepository.findById(id);
		EpassFormOutsideStateDTO dto = new EpassFormOutsideStateDTO();
		dto.setEpassForm(epassForm);
		List<OutsideState> pass = outsideStateRepository.findOutsideStateByEpassId(id);
		dto.setOutsideState(pass);
		return dto;
	}

	@Transactional
	public void addEpassAndPassengersWithinDistrict(EpassFormPassengersDTO dto) {
		EpassForm epassForm = dto.getEpassForm();
		save(epassForm);
		List<Passengers> passengersList = dto.getPassengers();
		int count = passengersList.size();
		for (int i = 0; i < count; i++) {
			passengersRepositry.save(passengersList.get(i));
		}
	}
}