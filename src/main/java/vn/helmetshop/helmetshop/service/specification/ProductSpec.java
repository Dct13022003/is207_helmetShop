package vn.helmetshop.helmetshop.service.specification;

import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import jakarta.persistence.criteria.Join;
import vn.helmetshop.helmetshop.domain.Category_;
import vn.helmetshop.helmetshop.domain.Product;
import vn.helmetshop.helmetshop.domain.Product_;
import vn.helmetshop.helmetshop.domain.Product_size;

@Service
public class ProductSpec {
    public static Specification<Product> nameLike(String name) {
        return (root, query, criteriaBuilder) -> criteriaBuilder.like(root.get(Product_.CODE), "%" + name + "%");
    }

    // case3
    public static Specification<Product> matchCategory(Long category) {
        return (root, query, criteriaBuilder) -> criteriaBuilder.equal(root.get(Product_.CATEGORY).get(Category_.ID),
                category);
    }

    public static Specification<Product> orderByPrice(Long order) {
        return (root, query, criteriaBuilder) -> {
            Join<Product, Product_size> productSizeJoin = root.join("product_sizes");

            
            if (order == 1) {
                query.orderBy(criteriaBuilder.asc(productSizeJoin.get("price")));
            } else {
                query.orderBy(criteriaBuilder.desc(productSizeJoin.get("price")));
            }

            return null; 
        };
    }

}
