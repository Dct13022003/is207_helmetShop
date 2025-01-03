package vn.helmetshop.helmetshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.helmetshop.helmetshop.domain.Cart;
import vn.helmetshop.helmetshop.domain.CartDetail;
import vn.helmetshop.helmetshop.domain.Product;

@Repository
public interface CartDetailRepository extends JpaRepository<CartDetail, Long> {
    CartDetail findByCartAndProductAndSizeItem(Cart cart, Product product, String sizeItem);

    CartDetail save(CartDetail cartDetail);
}
