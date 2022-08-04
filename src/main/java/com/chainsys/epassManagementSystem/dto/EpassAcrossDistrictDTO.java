package com.chainsys.epassManagementSystem.dto;

import java.util.List;

import com.chainsys.epassManagementSystem.model.AcrossDistrict;
import com.chainsys.epassManagementSystem.model.EpassForm;

public class EpassAcrossDistrictDTO {
	
	private EpassForm epassForm;
	private List<AcrossDistrict> acrossDistrict;
	
	public EpassForm getEpassForm() {
		return epassForm;
	}
	public void setEpassForm(EpassForm epassForm) {
		this.epassForm = epassForm;
	}
	public List<AcrossDistrict> getAcrossDistrict() {
		return acrossDistrict;
	}
	public void setAcrossDistrict(List<AcrossDistrict> acrossDistrict) {
		this.acrossDistrict = acrossDistrict;
	}
	
//	public void addAcrossDistrict(AcrossDistrict acrossdistrict) {
//		acrossDistrict.add(acrossdistrict);
//	}

}