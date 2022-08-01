package com.chainsys.epassManagementSystem.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "epass_across_district")
public class AcrossDistrict {
	@Id
	@Column(name = "user_id")
	private String userId;
	@Column(name = "from_district")
	private String fromDistrict;
	@Column(name = "to_district")
	private String toDistrict;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getFromDistrict() {
		return fromDistrict;
	}

	public void setFromDistrict(String fromDistrict) {
		this.fromDistrict = fromDistrict;
	}

	public String getToDistrict() {
		return toDistrict;
	}

	public void setToDistrict(String toDistrict) {
		this.toDistrict = toDistrict;
	}

}
