package com.chainsys.epassManagementSystem.repository;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.epassManagementSystem.model.Passengers;

@Repository
public interface PassengersRepository extends CrudRepository<Passengers, String> {
	
	Passengers save(Passengers passengers);
	List<Passengers> findAll();
	List<Passengers> findByEpassformEpassId(int id);
  
}