package buaa.sem.amc.service;

import buaa.sem.amc.entity.StockUp;
import buaa.sem.amc.entity.StockUpDetail;

import java.util.List;

/**
 * Created by Erinyse on 2017/2/13.
 */
public interface StockUpService {
    public List<StockUp> findAllStockUps();
    public List<StockUpDetail> findStockUpById(int stockUpId);
    public void finishDelivery(int stockUpId);
}
