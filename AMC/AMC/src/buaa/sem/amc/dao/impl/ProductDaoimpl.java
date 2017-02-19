package buaa.sem.amc.dao.impl;

import buaa.sem.amc.dao.ProductDao;
import buaa.sem.amc.entity.Product;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import java.util.List;

/**
 * Created by Erinyse on 2017/2/19.
 */
public class ProductDaoimpl extends HibernateDaoSupport implements ProductDao {
    @Override
    public List<Product> findAllProducts() {
        return null;
    }

    @Override
    public List<Product> findUnsafeProducts() {
        return null;
    }

    @Override
    public Product findProductById(int productId) {
        return null;
    }

    @Override
    public void delete(int productId) {

    }

    @Override
    public void update(Product product) {

    }

    @Override
    public void add(List<Product> unsafeProducts) {

    }

    @Override
    public void add(Product product) {

    }
}
