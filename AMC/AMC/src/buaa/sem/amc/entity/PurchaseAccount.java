package buaa.sem.amc.entity;
// Generated 2017-1-17 13:52:54 by Hibernate Tools 5.2.0.CR1

import java.util.Date;

/**
 * PurchaseAccount generated by hbm2java
 */
public class PurchaseAccount implements java.io.Serializable {

	private Integer purchaseAccountlId;
	private Integer payableId;
	private Date addTime;
	private Double totalAccount;

	public PurchaseAccount() {
	}

	public PurchaseAccount(Integer payableId, Date addTime, Double totalAccount) {
		this.payableId = payableId;
		this.addTime = addTime;
		this.totalAccount = totalAccount;
	}

	public Integer getPurchaseAccountlId() {
		return this.purchaseAccountlId;
	}

	public void setPurchaseAccountlId(Integer purchaseAccountlId) {
		this.purchaseAccountlId = purchaseAccountlId;
	}

	public Integer getPayableId() {
		return this.payableId;
	}

	public void setPayableId(Integer payableId) {
		this.payableId = payableId;
	}

	public Date getAddTime() {
		return this.addTime;
	}

	public void setAddTime(Date addTime) {
		this.addTime = addTime;
	}

	public Double getTotalAccount() {
		return this.totalAccount;
	}

	public void setTotalAccount(Double totalAccount) {
		this.totalAccount = totalAccount;
	}

}
