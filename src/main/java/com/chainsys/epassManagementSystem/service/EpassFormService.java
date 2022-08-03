package com.chainsys.epassManagementSystem.service;

import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.epassManagementSystem.model.EpassForm;
import com.chainsys.epassManagementSystem.model.EpassFormPassengersDTO;
import com.chainsys.epassManagementSystem.model.Passengers;
import com.chainsys.epassManagementSystem.repository.EpassFormRepository;
import com.chainsys.epassManagementSystem.repository.PassengersRepository;

@Service
public class EpassFormService {
	@Autowired
	private EpassFormRepository epassFormRepository;

	@Autowired
	private PassengersRepository passengersRepositry;

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
}