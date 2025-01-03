package vn.helmetshop.helmetshop.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import vn.helmetshop.helmetshop.domain.Order;
import vn.helmetshop.helmetshop.domain.User;

@Repository
public interface OrderRepository extends JpaRepository<Order, Long> {
    Order save(Order order);

    Page<Order> findAll(Pageable page);

    List<Order> findByUser(User user);

    @Query("Select o from Order o where o.payment_ref = ?1")
    Optional<Order> findByPayment_ref(String paymentRef);

    @Query(value = "SELECT * FROM orders WHERE status LIKE CONCAT('%',:status,'%')", nativeQuery = true)
    Optional<List<Order>> findByPayment_status(@Param("status") String status);

}
