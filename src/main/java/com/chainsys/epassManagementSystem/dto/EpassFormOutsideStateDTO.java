package com.chainsys.epassManagementSystem.dto;

import java.util.List;
import com.chainsys.epassManagementSystem.model.EpassForm;
import com.chainsys.epassManagementSystem.model.OutsideState;

public class EpassFormOutsideStateDTO {

	private EpassForm epassForm;
	private List<OutsideState> outsideState;
	public EpassForm getEpassForm() {
		return epassForm;
	}
	public void setEpassForm(EpassForm epassForm) {
		this.epassForm = epassForm;
	}
	public List<OutsideState> getOutsideState() {
		return outsideState;
	}
	public void setOutsideState(List<OutsideState> outsideState) {
		this.outsideState = outsideState;
	}
	
}
