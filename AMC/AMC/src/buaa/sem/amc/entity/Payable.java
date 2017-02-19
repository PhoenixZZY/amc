package buaa.sem.amc.entity;
// Generated 2017-1-17 13:52:54 by Hibernate Tools 5.2.0.CR1

import java.util.Date;

/**
 * Payable generated by hbm2java
 */
public class Payable implements java.io.Serializable {

	private Integer payableId;
	private Integer purchaseId;
	private Integer payableDetailId;
	private Double totalAccount;
	private String invoiceState;
	private Date addTime;
	private String payState;

	public Payable() {
	}

	public Payable(Integer purchaseId, Integer payableDetailId, Double totalAccount, String invoiceState, Date addTime,
			String payState) {
		this.purchaseId = purchaseId;
		this.payableDetailId = payableDetailId;
		this.totalAccount = totalAccount;
		this.invoiceState = invoiceState;
		this.addTime = addTime;
		this.payState = payState;
	}

	public Integer getPayableId() {
		return this.payableId;
	}

	public void setPayableId(Integer payableId) {
		this.payableId = payableId;
	}

	public Integer getPurchaseId() {
		return this.purchaseId;
	}

	public void setPurchaseId(Integer purchaseId) {
		this.purchaseId = purchaseId;
	}

	public Integer getPayableDetailId() {
		return this.payableDetailId;
	}

	public void setPayableDetailId(Integer payableDetailId) {
		this.payableDetailId = payableDetailId;
	}

	public Double getTotalAccount() {
		return this.totalAccount;
	}

	public void setTotalAccount(Double totalAccount) {
		this.totalAccount = totalAccount;
	}

	public String getInvoiceState() {
		return this.invoiceState;
	}

	public void setInvoiceState(String invoiceState) {
		this.invoiceState = invoiceState;
	}

	public Date getAddTime() {
		return this.addTime;
	}

	public void setAddTime(Date addTime) {
		this.addTime = addTime;
	}

	public String getPayState() {
		return this.payState;
	}

	public void setPayState(String payState) {
		this.payState = payState;
	}

}