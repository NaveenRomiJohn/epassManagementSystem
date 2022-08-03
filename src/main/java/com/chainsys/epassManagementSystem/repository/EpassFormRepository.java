package com.chainsys.epassManagementSystem.repository;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.chainsys.epassManagementSystem.model.EpassForm;

@Repository
public interface EpassFormRepository extends CrudRepository<EpassForm, Integer>{
	EpassForm save(EpassForm epassForm);
	 List<EpassForm> findAll();
	 EpassForm findById(int epassId);
	 void deleteById(int epassId);
}
