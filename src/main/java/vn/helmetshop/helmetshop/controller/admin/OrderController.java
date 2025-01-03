package vn.helmetshop.helmetshop.controller.admin;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import vn.helmetshop.helmetshop.domain.Order;
import vn.helmetshop.helmetshop.service.OrderService;

@Controller
public class OrderController {
    private final OrderService orderService;

    public OrderController(OrderService orderService) {
        this.orderService = orderService;
    }

    @GetMapping("/admin/order")
    public String getOrderPage(Model model, @RequestParam("page") Optional<String> pageOptional) {
        int page = 1;
        try {
            if (pageOptional.isPresent()) {
                // convert from String to int
                page = Integer.parseInt(pageOptional.get());
            } else {
                // page = 1
            }
        } catch (Exception e) {
            // page = 1
            // TODO: handle exception
        }
        Pageable pageable = PageRequest.of(page - 1, 5);
        Page<Order> ordersPage = this.orderService.getAllOrderPage(pageable);
        List<Order> orders = ordersPage.getContent();

        model.addAttribute("orders", orders);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", ordersPage.getTotalPages());
        return "admin/order/show";
    }

    @PostMapping(value = "/api/update-status")
    @ResponseBody
    public ResponseEntity<?> updateStatusOrder(@RequestParam("orderId") Long orderId,
            @RequestParam("value") String value,
            @RequestParam("text") String text) {
        this.orderService.updateStatusOrder(orderId, text);
        return ResponseEntity.ok("Cập nhật thành công!");
    }

    @GetMapping("/admin/order/detail/{id}")
    public String getOrderDetailPage(Model model, @PathVariable Long id) {
        Optional<Order> orderDetail = this.orderService.getOrderById(id);
        model.addAttribute("orderDetail", orderDetail.get());
        return "admin/order/detail";
    }

    @PostMapping(value = "admin/order/delete/{id}")
    public String deleteOrder(@PathVariable("id") Long id) {
        this.orderService.deleteOrder(id);
        return "redirect:/admin/order";
    }
}
