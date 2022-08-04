package com.chainsys.epassManagementSystem.service;

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
	
	@Transactional
	public OutsideState save(OutsideState outsideState) {
		return outsideStateRepository.save(outsideState);
	}
}
