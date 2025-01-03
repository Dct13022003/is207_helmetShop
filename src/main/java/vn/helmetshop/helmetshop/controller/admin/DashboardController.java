package vn.helmetshop.helmetshop.controller.admin;

import java.security.Principal;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import vn.helmetshop.helmetshop.domain.Order;
import vn.helmetshop.helmetshop.domain.User;
import vn.helmetshop.helmetshop.service.OrderService;
import vn.helmetshop.helmetshop.service.UserService;

@Controller
public class DashboardController {
    private final UserService userService;
    private final OrderService orderService;

    public DashboardController(UserService userService, OrderService orderService) {
        this.userService = userService;
        this.orderService = orderService;
    }

    @RequestMapping("/admin")
    public String getDashboardPage(Model model) {
        Optional<List<Order>> listOrderSucces = this.orderService.findOrderSuccess("CONFIRM");
        Optional<List<Order>> listOrderPending = this.orderService.findOrderSuccess("PENDING");
        if (listOrderSucces.isPresent()) {
            double totalAmout = 0;
            for (Order order : listOrderSucces.get())
                totalAmout += order.getTotalPrice();
            model.addAttribute("totalAmout", totalAmout);
            model.addAttribute("totalSuccessOrder", listOrderSucces.get().size());
        }
        if (listOrderPending.isPresent()) {

            model.addAttribute("totalPendingOrder", listOrderPending.get().size());
        }
        return "admin/dashboard/show";
    }

    @RequestMapping("/admin/profile")
    public String getProfilePage(Principal principal, Model model) {
        String username = principal.getName();
        User user = this.userService.getUserByEmail(username);
        model.addAttribute("inforUser", user);
        return "admin/dashboard/profile";
    }

    @PostMapping("/admin/logout")
    public String postLogout() {

        return "admin/dashboard/profile";
    }
}
