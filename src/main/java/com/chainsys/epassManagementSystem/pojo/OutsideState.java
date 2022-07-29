package com.chainsys.epassManagementSystem.pojo;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "epass_outside_state")
public class OutsideState {

	@Column(name = "from_state")
	private String fromState;
	@Column(name = "to_state")
	private String toState;
	@Column(name = "quarantine_from_date")
	private Date quarantineFromDate;
	@Column(name = "quarantine_to_date")
	private Date quarantineToDate;
	@Column(name = "quarantine_location")
	private String quarantineLocation;
	@Column(name = "pcr_result_certificate_date")
	private Date pcrResultCertificateDate;
	@Column(name = "pcr_result_certificate_number")
	private int pcrResultCertificateNumber;
	@Column(name = "pcr_certificate_issued_by")
	private String pcrCertificateIssuedBy;

	public String getFromState() {
		return fromState;
	}

	public void setFromState(String fromState) {
		this.fromState = fromState;
	}

	public String getToState() {
		return toState;
	}

	public void setToState(String toState) {
		this.toState = toState;
	}

	public Date getQuarantineFromDate() {
		return quarantineFromDate;
	}

	public void setQuarantineFromDate(Date quarantineFromDate) {
		this.quarantineFromDate = quarantineFromDate;
	}

	public Date getQuarantineToDate() {
		return quarantineToDate;
	}

	public void setQuarantineToDate(Date quarantineToDate) {
		this.quarantineToDate = quarantineToDate;
	}

	public String getQuarantineLocation() {
		return quarantineLocation;
	}

	public void setQuarantineLocation(String quarantineLocation) {
		this.quarantineLocation = quarantineLocation;
	}

	public Date getPcrResultCertificateDate() {
		return pcrResultCertificateDate;
	}

	public void setPcrResultCertificateDate(Date pcrResultCertificateDate) {
		this.pcrResultCertificateDate = pcrResultCertificateDate;
	}

	public int getPcrResultCertificateNumber() {
		return pcrResultCertificateNumber;
	}

	public void setPcrResultCertificateNumber(int pcrResultCertificateNumber) {
		this.pcrResultCertificateNumber = pcrResultCertificateNumber;
	}

	public String getPcrCertificateIssuedBy() {
		return pcrCertificateIssuedBy;
	}

	public void setPcrCertificateIssuedBy(String pcrCertificateIssuedBy) {
		this.pcrCertificateIssuedBy = pcrCertificateIssuedBy;
	}

}
