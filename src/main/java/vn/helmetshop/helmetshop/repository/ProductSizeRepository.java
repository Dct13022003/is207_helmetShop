package vn.helmetshop.helmetshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import vn.helmetshop.helmetshop.domain.Product;
import vn.helmetshop.helmetshop.domain.Product_size;
import vn.helmetshop.helmetshop.domain.Size;

@Repository
public interface ProductSizeRepository extends JpaRepository<Product_size, Long> {
    Product_size save(Product_size product_size);

    @Query("SELECT p FROM Product_size p WHERE p.product = :productId and p.size=:sizeId")
    Product_size findQuantityById(@Param("productId") Product productId, @Param("sizeId") Size sizeId);
}
