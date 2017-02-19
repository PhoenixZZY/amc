package buaa.sem.amc.dao.impl;

import buaa.sem.amc.dao.PurchaseDao;
import buaa.sem.amc.entity.Purchase;
import buaa.sem.amc.entity.PurchaseDetail;
import org.hibernate.Hibernate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import java.util.List;

/**
 * Created by Erinyse on 2017/2/19.
 */
public class PurchaseDaoimpl extends HibernateDaoSupport implements PurchaseDao {

    @Override
    public List<Purchase> findAllPurchases() {
        String hql = "select new buaa.sem.amc.entity.Purchase(p.purchaseid,p.userid,p.addtime,p.state) from Purchase as p";
        List<Purchase> list = (List<Purchase>)getHibernateTemplate().find(hql);
        return list;
    }

    @Override
    public List<PurchaseDetail> findPurchaseById(int purchaseId) {
        List<PurchaseDetail> list = (List<PurchaseDetail>)getHibernateTemplate().find("from PurchaseDetail p where p.purchaseid=?",purchaseId);
        return list;
    }

    @Override
    public void finishPurchase(int purchaseId) {

    }
}
