package buaa.sem.amc.dao.impl;

import buaa.sem.amc.dao.StockUpDao;
import buaa.sem.amc.entity.StockUp;
import buaa.sem.amc.entity.StockUpDetail;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.hibernate.Query;
import java.sql.SQLException;

import java.util.List;

/**
 * Created by Erinyse on 2017/2/19.
 */
public class StockUpDaoimpl extends HibernateDaoSupport implements StockUpDao{

    @Override
    public List<StockUp> findAllStockUps() {
        String hql = "select new buaa.sem.amc.entity.StockUp(s.stockUpId,s.orderId,s.userId,s.addTime,s.state) from Stockup as s";
        List<StockUp> list = (List<StockUp>)getHibernateTemplate().find(hql);
        return list;
    }

    @Override
    public List<StockUpDetail> findStockUpById(int stockUpId) {
        List<StockUpDetail> list = (List<StockUpDetail>)getHibernateTemplate().find("from StockUpDetail s where s.stockUpId = ?",stockUpId);
        return list;
    }

    @Override
    public void finishDelivery (int stockUpId){

    }

}
