package vn.helmetshop.helmetshop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import vn.helmetshop.helmetshop.domain.Product_attribute;

@Repository
public interface ProductAttributeRepository extends JpaRepository<Product_attribute, Long> {
    @Query(value = "select * from product_attribute p where p.product_id = :productId", nativeQuery = true)
    List<Product_attribute> findByProductID(@Param("productId") Long productId);
}
