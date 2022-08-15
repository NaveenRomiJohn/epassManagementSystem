package com.chainsys.epassManagementSystem.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.epassManagementSystem.model.OutsideState;
import com.chainsys.epassManagementSystem.repository.OutsideStateRepository;

@Service
public class OutsideStateService {

	@Autowired
	private OutsideStateRepository outsideStateRepository;
	
	public OutsideState findById(int id) {
		return outsideStateRepository.findById(id);
	}
	
	public List<OutsideState> getAllOutsideState() {
		List<OutsideState> outsideStateForm = outsideStateRepository.findAll();
		return outsideStateForm;
	}
	
	@Transactional
	public OutsideState save(OutsideState outsideState) {
		return outsideStateRepository.save(outsideState);
	}
}
