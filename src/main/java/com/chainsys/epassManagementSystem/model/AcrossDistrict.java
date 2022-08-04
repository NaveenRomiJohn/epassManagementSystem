package com.chainsys.epassManagementSystem.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "epass_across_district")
public class AcrossDistrict {
	@Id
	@Column(name = "district_id")
	private int districtId;
	@Column(name = "epass_id")
	private int epassId;
	@Column(name = "from_district")
	private String fromDistrict;
	@Column(name = "to_district")
	private String toDistrict;
	
//	@OneToMany(mappedBy = "acrossDistrict", fetch = FetchType.LAZY)
//	private List<EpassForm> epassForm;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "epass_id", insertable = false, updatable = false, nullable = false)
	private EpassForm epassForm;
	
	public int getDistrictId() {
		return districtId;
	}

	public void setDistrictId(int districtId) {
		this.districtId = districtId;
	}

	public int getEpassId() {
		return epassId;
	}

	public void setEpassId(int epassId) {
		this.epassId = epassId;
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

	public EpassForm getEpassForm() {
		return epassForm;
	}

	public void setEpassForm(EpassForm epassForm) {
		this.epassForm = epassForm;
	}

}
