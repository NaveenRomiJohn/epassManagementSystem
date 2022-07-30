package com.chainsys.epassManagementSystem.pojo;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "epass_across_district")
public class AcrossDistrict {
	@Id
	@Column(name = "from_district")
	private String fromDistrict;
	@Column(name = "to_district")
	private String toDistrict;
}
