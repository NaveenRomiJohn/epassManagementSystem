package com.chainsys.epassManagementSystem.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.epassManagementSystem.businesslogic.Logic;
import com.chainsys.epassManagementSystem.dto.EpassFormOutsideStateDTO;
import com.chainsys.epassManagementSystem.dto.EpassFormPassengersDTO;
import com.chainsys.epassManagementSystem.model.EpassForm;
import com.chainsys.epassManagementSystem.model.OutsideState;
import com.chainsys.epassManagementSystem.model.Passengers;
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
	private OutsideStateRepository outsideStateRepository;

	@Transactional
	public EpassForm save(EpassForm epass) {
		epass.setAppliedDate(Logic.getInstanceDate());
		return epassFormRepository.save(epass);
	}

	public List<EpassForm> getAllEpassForm() {
		List<EpassForm> listEpassForm = epassFormRepository.findAll();
		return listEpassForm;
	}

	public EpassForm findById(int id) {
		return epassFormRepository.findById(id);
	}

	public List<EpassForm> findByApprovalStatuss(String status) {
		List<EpassForm> statusList = epassFormRepository.findByApprovalStatus(status);
		return statusList;
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

	public List<EpassForm> epassProcessing() {
		String status = "processing";
		return epassFormRepository.findByApprovalStatus(status);
	}

	public List<EpassForm> epassApproved() {
		String status = "Approved";
		return epassFormRepository.findByApprovalStatus(status);
	}

	public List<EpassForm> epassRejected() {
		String status = "Rejected";
		return epassFormRepository.findByApprovalStatus(status);
	}

// within and across district
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

//	outside state	
	@Transactional
	public void addEpassOutsideState(EpassFormOutsideStateDTO dto) {
		EpassForm epassForm = dto.getEpassForm();
		save(epassForm);
		OutsideState outsideState = dto.getOutsideState();
		outsideStateRepository.save(outsideState);
		List<Passengers> passengersList = dto.getPassengers();
		int count = passengersList.size();
		for (int i = 0; i < count; i++) {
			passengersRepositry.save(passengersList.get(i));
		}
	}

}