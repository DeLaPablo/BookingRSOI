package com.example.tourism.services;

import com.example.tourism.models.Product;
import com.example.tourism.repositories.ProductRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class ProductService {

   /* private List<Product> products = new ArrayList<>();
    private long ID = 0;

    {
        products.add(new Product(++ID,"Poezdka v Gruziyu", "Simple description", 2000, "Tbilisi", "Belavia"));
        products.add(new Product(++ID,"Poezdka v Turkey", "Simple description", 2500, "Stambul", "Belavia"));
    }*/

    private final ProductRepository productRepository;

    public List<Product> listProducts(String title) {
        if (title != null) return productRepository.findByTitle(title);
        return productRepository.findAll();
    }

    public void saveProduct(Product product) {
        log.info("Saving new {}", product);
        productRepository.save(product);
    }

    public void deleteProduct(Long id) {
        productRepository.deleteById(id);
    }

    public Product getProductById(Long id) {
      return productRepository.findById(id).orElse(null);
    }
}
