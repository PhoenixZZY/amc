package buaa.sem.amc.entity;
// Generated 2017-1-17 13:52:54 by Hibernate Tools 5.2.0.CR1

import java.util.Date;

/**
 * AgainPurchase generated by hbm2java
 */
public class AgainPurchase implements java.io.Serializable {

	private Integer againPurchaseId;
	private Integer userId;
	private Date addTime;
	private String state;

	public AgainPurchase() {
	}

	public AgainPurchase(Integer userId, Date addTime, String state) {
		this.userId = userId;
		this.addTime = addTime;
		this.state = state;
	}

	public Integer getAgainPurchaseId() {
		return this.againPurchaseId;
	}

	public void setAgainPurchaseId(Integer againPurchaseId) {
		this.againPurchaseId = againPurchaseId;
	}

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Date getAddTime() {
		return this.addTime;
	}

	public void setAddTime(Date addTime) {
		this.addTime = addTime;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

}
