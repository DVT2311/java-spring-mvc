package vn.hoidanit.laptopshop.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import vn.hoidanit.laptopshop.domain.Product;
import vn.hoidanit.laptopshop.repository.ProductReposity;

@Service
public class ProductService {
    private final ProductReposity productReposity;

    public ProductService(ProductReposity productResposity) {
        this.productReposity = productResposity;
    }

    public Product createProduct(Product pr) {
        return this.productReposity.save(pr);
    }

    public List<Product> fetchProducts() {
        return this.productReposity.findAll();
    }

    public Product getProductById(long id) {
        return this.productReposity.findById(id);
    }

    public Product handleSaveProduct(Product product) {
        return this.productReposity.save(product);
    }

    public void deleteProduct(long id) {
        this.productReposity.deleteById(id);
    }
}
