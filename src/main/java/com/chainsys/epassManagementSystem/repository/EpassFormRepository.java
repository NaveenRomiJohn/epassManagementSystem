package com.chainsys.epassManagementSystem.repository;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.epassManagementSystem.model.EpassForm;


public interface EpassFormRepository extends CrudRepository<EpassForm, Integer>{
	EpassForm save(EpassForm epassForm);
}
