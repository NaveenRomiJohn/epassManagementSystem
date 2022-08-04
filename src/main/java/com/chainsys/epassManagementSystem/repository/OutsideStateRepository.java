package com.chainsys.epassManagementSystem.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.epassManagementSystem.model.AcrossDistrict;
import com.chainsys.epassManagementSystem.model.OutsideState;

@Repository
public interface OutsideStateRepository extends CrudRepository<OutsideState, Integer>{

	OutsideState save(AcrossDistrict user);
	OutsideState findById(int districtId);
	List<OutsideState> findOutsideStateByEpassId(int id);
}
