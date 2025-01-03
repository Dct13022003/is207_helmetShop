// package vn.helmetshop.helmetshop.controller.client;

// import java.util.ArrayList;
// import java.util.List;
// import java.util.Optional;

// import org.springframework.http.HttpStatus;
// import org.springframework.http.ResponseEntity;
// import org.springframework.web.bind.annotation.ModelAttribute;
// import org.springframework.web.bind.annotation.PostMapping;
// import org.springframework.web.bind.annotation.RequestBody;
// import org.springframework.web.bind.annotation.RequestMapping;
// import org.springframework.web.bind.annotation.RestController;

// import vn.helmetshop.helmetshop.domain.CartDetail;
// import vn.helmetshop.helmetshop.domain.Product;
// import vn.helmetshop.helmetshop.domain.Size;
// import vn.helmetshop.helmetshop.domain.dto.InvalidProductDTO;
// import vn.helmetshop.helmetshop.domain.dto.ValidationResponse;
// import vn.helmetshop.helmetshop.service.ProductService;
// import vn.helmetshop.helmetshop.service.SizeService;

// @RestController
// @RequestMapping("/api")
// public class CartValidationController {

// private final ProductService productService;
// private final SizeService sizeService;

// public CartValidationController(ProductService productService, SizeService
// sizeService) {
// this.productService = productService;
// this.sizeService = sizeService;
// }

// @PostMapping("/validate-cart")
// public ResponseEntity<?> validateCart(@ModelAttribute List<CartDetail>
// cartDetails) {
// List<InvalidProductDTO> invalidProducts = new ArrayList<>();

// for (CartDetail item : cartDetails) {
// Optional<Size> size = this.sizeService.getSizeByName(item.getSizeItem());
// // Lấy số lượng sản phẩm còn lại từ database
// int availableQuantity =
// productService.getProductQuantityById(item.getProduct(), size.get());
// if (item.getQuantity() > availableQuantity) {
// // Nếu số lượng không hợp lệ, thêm vào danh sách sản phẩm không hợp lệ
// InvalidProductDTO invalidProduct = new InvalidProductDTO(
// item.getProduct().getId(),
// item.getProduct().getCode(),
// item.getQuantity(),
// availableQuantity);
// invalidProducts.add(invalidProduct);
// }
// }

// if (!invalidProducts.isEmpty()) {
// // Nếu có sản phẩm không hợp lệ, trả về danh sách
// return ResponseEntity.status(HttpStatus.BAD_REQUEST)
// .body(new ValidationResponse(false, "Có sản phẩm không hợp lệ.",
// invalidProducts));
// }

// // Nếu tất cả sản phẩm hợp lệ
// return ResponseEntity.ok(new ValidationResponse(true, "Tất cả sản phẩm hợp
// lệ.", null));
// }
// }
