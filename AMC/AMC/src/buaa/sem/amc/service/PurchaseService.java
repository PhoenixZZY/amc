package buaa.sem.amc.service;

import buaa.sem.amc.entity.Purchase;
import buaa.sem.amc.entity.PurchaseDetail;

import java.util.List;

/**
 * Created by Erinyse on 2017/2/13.
 */
public interface PurchaseService {
    public List<Purchase> findAllPurchases();
    public List<PurchaseDetail> findPurchaseById(int purchaseId);
    public void finishPurchase (int purchaseId);
}
