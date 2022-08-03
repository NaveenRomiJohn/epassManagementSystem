package com.chainsys.epassManagementSystem.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.chainsys.epassManagementSystem.model.AcrossDistrict;

@Repository
public interface AcrossDistrictRepository extends CrudRepository<AcrossDistrict, Integer> {

	AcrossDistrict save(AcrossDistrict user);
}
