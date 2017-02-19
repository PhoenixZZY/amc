package buaa.sem.amc.service.impl;

import buaa.sem.amc.dao.StockUpDao;
import buaa.sem.amc.entity.StockUp;
import buaa.sem.amc.entity.StockUpDetail;
import buaa.sem.amc.service.StockUpService;

import java.util.List;

/**
 * Created by Erinyse on 2017/2/19.
 */
public class StockUpServiceImpl implements StockUpService {
    private StockUpDao stockUpDao;

    @Override
    public List<StockUp> findAllStockUps() {
        return null;
    }

    @Override
    public List<StockUpDetail> findStockUpById(int stockUpId) {
        return null;
    }

    @Override
    public void finishDelivery(int stockUpId) {

    }
}
