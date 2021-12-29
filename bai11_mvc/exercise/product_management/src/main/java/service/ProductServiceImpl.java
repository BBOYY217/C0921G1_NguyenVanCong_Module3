package service;


import bean.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Product> Products;

    static {
        Products = new HashMap<>();
        Products.put(1, new Product(1, "Razer phone 2", "500", "black", "Razer"));
        Products.put(2, new Product(2, "Iphone 13", "500", "blue", "Apple"));
        Products.put(3, new Product(3, "ROG 5", "500", "red", "Asus"));
        Products.put(4, new Product(4, "Xiaomi note 10", "500", "white", "Xiaomi"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(Products.values());
    }

    @Override
    public void save(Product product) {
        Products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return Products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        Products.put(id, product);
    }

    @Override
    public void remove(int id) {
        Products.remove(id);
    }
}