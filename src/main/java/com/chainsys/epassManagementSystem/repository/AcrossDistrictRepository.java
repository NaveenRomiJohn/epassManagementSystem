package com.chainsys.epassManagementSystem.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.chainsys.epassManagementSystem.model.AcrossDistrict;
import com.chainsys.epassManagementSystem.model.EpassForm;

@Repository
public interface AcrossDistrictRepository extends CrudRepository<AcrossDistrict, Integer> {

	AcrossDistrict save(AcrossDistrict user);
	AcrossDistrict findById(int districtId);
	List<AcrossDistrict> findAcrossDistrictByEpassId(int id);
}
