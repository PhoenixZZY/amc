package buaa.sem.amc.dao;

import buaa.sem.amc.entity.StockUp;
import buaa.sem.amc.entity.StockUpDetail;

import java.util.List;

/**
 * Created by Erinyse on 2017/2/13.
 */
public interface StockUpDao {
    public List<StockUp> findAllStockUps();
    public List<StockUpDetail> findStockUpById(int stockUpId);
    public void finishDelivery (int stockUpId);
}
