package buaa.sem.amc.service;

import buaa.sem.amc.entity.Product;

import java.util.List;

/**
 * Created by Erinyse on 2017/2/13.
 */
public interface ProductService {
    public List<Product> findAllProducts();
    public List<Product> findUnsafeProducts();
    public Product findProductById(int productId);
    public void delete(int productId);
    public void update(Product product);
    public void add(List<Product> unsafeProducts);
    public void add(Product product);
}
