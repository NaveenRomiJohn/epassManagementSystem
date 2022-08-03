package com.chainsys.epassManagementSystem.repository;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.epassManagementSystem.model.Passengers;

@Repository
public interface PassengersRepository extends CrudRepository<Passengers, Integer> {
	
	Passengers findById(int id);
	@SuppressWarnings("unchecked")
	Passengers save(Passengers passengers);
	void deleteById(int id);
	List<Passengers>findAll();
//	List<Passengers> findByEpassId(int id);
//	List<Passengers> findByUserId(int id);

}
