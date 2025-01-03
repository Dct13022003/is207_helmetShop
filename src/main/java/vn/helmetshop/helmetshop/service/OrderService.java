package vn.helmetshop.helmetshop.service;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import vn.helmetshop.helmetshop.domain.Order;
import vn.helmetshop.helmetshop.domain.User;
import vn.helmetshop.helmetshop.repository.OrderRepository;

@Service
public class OrderService {
    private OrderRepository orderRepository;

    public OrderService(OrderRepository orderRepository) {
        this.orderRepository = orderRepository;
    }

    public Page<Order> getAllOrderPage(Pageable page) {
        return this.orderRepository.findAll(page);
    }

    public Order updateStatusOrder(Long id, String status) {
        Optional<Order> order = this.orderRepository.findById(id);
        if (order.isPresent()) {
            order.get().setStatus(status);

        }
        return this.orderRepository.save(order.get());
    }

    public List<Order> getOrderByUser(User user) {
        return this.orderRepository.findByUser(user);
    }

    public Optional<Order> getOrderById(Long id) {
        return this.orderRepository.findById(id);

    }

    public void deleteOrder(Long id) {
        this.orderRepository.deleteById(id);
    }

    public Optional<List<Order>> findOrderSuccess(String status) {
        return this.orderRepository.findByPayment_status(status);

    }
}
