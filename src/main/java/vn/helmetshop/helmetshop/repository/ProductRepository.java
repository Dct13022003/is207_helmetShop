package vn.helmetshop.helmetshop.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.JpaRepository;

import vn.helmetshop.helmetshop.domain.Product;

public interface ProductRepository extends JpaRepository<Product, Long> {
    Product save(Product product);

    List<Product> findAll();

    Product findById(long id);

    Page<Product> findAll(Specification<Product> spec, Pageable page);

    List<Product> findTop8ByTag(String tag);

}
