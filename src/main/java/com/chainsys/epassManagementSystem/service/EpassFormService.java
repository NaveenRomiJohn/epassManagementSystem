package com.chainsys.epassManagementSystem.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.epassManagementSystem.pojo.EpassForm;
import com.chainsys.epassManagementSystem.repository.EpassFormRepository;

@Service
public class EpassFormService {
	@Autowired
	private EpassFormRepository epassFormRepository;
	public EpassForm save(EpassForm epass) {
		return epassFormRepository.save(epass);
	}

}
