package buaa.sem.amc.service.impl;

import buaa.sem.amc.dao.PurchaseDao;
import buaa.sem.amc.entity.Purchase;
import buaa.sem.amc.entity.PurchaseDetail;
import buaa.sem.amc.service.PurchaseService;

import java.util.List;

/**
 * Created by Erinyse on 2017/2/19.
 */
public class PurchaseServiceImpl implements PurchaseService {
    private PurchaseDao purchaseDao;
    @Override
    public List<Purchase> findAllPurchases() {
        return null;
    }

    @Override
    public List<PurchaseDetail> findPurchaseById(int purchaseId) {
        return null;
    }

    @Override
    public void finishPurchase(int purchaseId) {

    }
}
