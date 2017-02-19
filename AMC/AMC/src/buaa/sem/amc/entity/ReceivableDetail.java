package buaa.sem.amc.entity;
// Generated 2017-1-17 13:52:54 by Hibernate Tools 5.2.0.CR1

/**
 * ReceivableDetail generated by hbm2java
 */
public class ReceivableDetail implements java.io.Serializable {

	private Integer receiveDetailId;
	private Integer receivableId;
	private Integer productId;
	private String productName;
	private Double salePrice;
	private Integer saleAmount;
	private Double totalAccount;

	public ReceivableDetail() {
	}

	public ReceivableDetail(Integer receivableId, Integer productId, String productName, Double salePrice,
			Integer saleAmount, Double totalAccount) {
		this.receivableId = receivableId;
		this.productId = productId;
		this.productName = productName;
		this.salePrice = salePrice;
		this.saleAmount = saleAmount;
		this.totalAccount = totalAccount;
	}

	public Integer getReceiveDetailId() {
		return this.receiveDetailId;
	}

	public void setReceiveDetailId(Integer receiveDetailId) {
		this.receiveDetailId = receiveDetailId;
	}

	public Integer getReceivableId() {
		return this.receivableId;
	}

	public void setReceivableId(Integer receivableId) {
		this.receivableId = receivableId;
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

	public Integer getSaleAmount() {
		return this.saleAmount;
	}

	public void setSaleAmount(Integer saleAmount) {
		this.saleAmount = saleAmount;
	}

	public Double getTotalAccount() {
		return this.totalAccount;
	}

	public void setTotalAccount(Double totalAccount) {
		this.totalAccount = totalAccount;
	}

}