package com.chainsys.epassManagementSystem.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.chainsys.epassManagementSystem.model.OutsideState;

@Repository
public interface OutsideStateRepository extends CrudRepository<OutsideState, Integer>{

}
