package buaa.sem.amc.dao;

import buaa.sem.amc.entity.Purchase;
import buaa.sem.amc.entity.PurchaseDetail;

import java.util.List;

/**
 * Created by Erinyse on 2017/2/19.
 */
public interface PurchaseDao {
    public List<Purchase> findAllPurchases();
    public List<PurchaseDetail> findPurchaseById(int purchaseId);
    public void finishPurchase (int purchaseId);

}
