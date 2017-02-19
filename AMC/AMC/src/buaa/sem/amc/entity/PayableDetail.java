package buaa.sem.amc.entity;
// Generated 2017-1-17 13:52:54 by Hibernate Tools 5.2.0.CR1

/**
 * PayableDetail generated by hbm2java
 */
public class PayableDetail implements java.io.Serializable {

	private Integer payableDetailId;
	private Integer payableId;
	private Integer productId;
	private String productName;
	private Double salePrice;
	private Integer replenishAmount;
	private Double totalAccount;

	public PayableDetail() {
	}

	public PayableDetail(Integer payableId, Integer productId, String productName, Double salePrice,
			Integer replenishAmount, Double totalAccount) {
		this.payableId = payableId;
		this.productId = productId;
		this.productName = productName;
		this.salePrice = salePrice;
		this.replenishAmount = replenishAmount;
		this.totalAccount = totalAccount;
	}

	public Integer getPayableDetailId() {
		return this.payableDetailId;
	}

	public void setPayableDetailId(Integer payableDetailId) {
		this.payableDetailId = payableDetailId;
	}

	public Integer getPayableId() {
		return this.payableId;
	}

	public void setPayableId(Integer payableId) {
		this.payableId = payableId;
	}

	public Integer getProductId() {
		return this.productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	public String getProductName() {
		return this.productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public Double getSalePrice() {
		return this.salePrice;
	}

	public void setSalePrice(Double salePrice) {
		this.salePrice = salePrice;
	}

	public Integer getReplenishAmount() {
		return this.replenishAmount;
	}

	public void setReplenishAmount(Integer replenishAmount) {
		this.replenishAmount = replenishAmount;
	}

	public Double getTotalAccount() {
		return this.totalAccount;
	}

	public void setTotalAccount(Double totalAccount) {
		this.totalAccount = totalAccount;
	}

}
