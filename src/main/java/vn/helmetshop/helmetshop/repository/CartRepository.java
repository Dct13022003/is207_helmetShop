package vn.helmetshop.helmetshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.helmetshop.helmetshop.domain.Cart;
import vn.helmetshop.helmetshop.domain.User;



@Repository
public interface CartRepository extends JpaRepository<Cart, Long> {
    Cart findByUser(User user);
}
