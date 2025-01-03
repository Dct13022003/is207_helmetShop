package vn.helmetshop.helmetshop.service;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.http.HttpSession;
import vn.helmetshop.helmetshop.domain.Attribute;
import vn.helmetshop.helmetshop.domain.Cart;
import vn.helmetshop.helmetshop.domain.CartDetail;
import vn.helmetshop.helmetshop.domain.Category;
import vn.helmetshop.helmetshop.domain.Image;
import vn.helmetshop.helmetshop.domain.Order;
import vn.helmetshop.helmetshop.domain.OrderDetail;
import vn.helmetshop.helmetshop.domain.Product;
import vn.helmetshop.helmetshop.domain.Product_attribute;
import vn.helmetshop.helmetshop.domain.Product_size;
import vn.helmetshop.helmetshop.domain.Size;
import vn.helmetshop.helmetshop.domain.User;
import vn.helmetshop.helmetshop.domain.dto.AttributeDTO;
import vn.helmetshop.helmetshop.domain.dto.ProductCriteriaDTO;
import vn.helmetshop.helmetshop.domain.dto.ProductDTO;
import vn.helmetshop.helmetshop.domain.dto.ProductShowDTO;
import vn.helmetshop.helmetshop.domain.dto.SizeDTO;
import vn.helmetshop.helmetshop.repository.AttributeRepository;
import vn.helmetshop.helmetshop.repository.CartDetailRepository;
import vn.helmetshop.helmetshop.repository.CartRepository;
import vn.helmetshop.helmetshop.repository.CategoryRepository;
import vn.helmetshop.helmetshop.repository.OrderDetailRepository;
import vn.helmetshop.helmetshop.repository.OrderRepository;
import vn.helmetshop.helmetshop.repository.ProductAttributeRepository;
import vn.helmetshop.helmetshop.repository.ProductRepository;
import vn.helmetshop.helmetshop.repository.ProductSizeRepository;
import vn.helmetshop.helmetshop.repository.SizeRepository;
import vn.helmetshop.helmetshop.repository.Mapper.AttributeMapper;
import vn.helmetshop.helmetshop.repository.Mapper.ProductShowMapper;
import vn.helmetshop.helmetshop.repository.Mapper.SizeMapper;
import vn.helmetshop.helmetshop.service.specification.ProductSpec;

@Service
public class ProductService {
    private final SizeRepository sizeRepository;
    private final CartDetailRepository cartDetailRepository;
    private final UserService userService;
    private final ProductRepository productRepository;
    private final UploadFileService uploadFileService;
    private final AttributeRepository attributeRepository;
    private final CategoryRepository categoryRepository;
    private final CartRepository cartRepository;
    private final OrderRepository orderRepository;
    private final OrderDetailRepository orderDetailRepository;
    private final ProductSizeRepository productSizeRepository;
    private ProductShowMapper productShowMapper = ProductShowMapper.INSTANCE;
    private AttributeMapper attributeMapper = AttributeMapper.INSTANCE;
    private SizeMapper sizeMapper = SizeMapper.INSTANCE;

    public ProductService(SizeRepository sizeRepository, ProductSizeRepository productSizeRepository,
            ProductRepository productRepository, UploadFileService uploadFileService,
            CategoryRepository categoryRepository, UserService userService,
            AttributeRepository attributeRepository, ProductAttributeRepository productAttributeRepository,
            CartRepository cartRepository, CartDetailRepository cartDetailRepository,
            OrderRepository orderRepository, OrderDetailRepository orderDetailRepository) {
        this.sizeRepository = sizeRepository;
        this.productRepository = productRepository;
        this.uploadFileService = uploadFileService;
        this.categoryRepository = categoryRepository;
        this.attributeRepository = attributeRepository;
        this.userService = userService;
        this.cartRepository = cartRepository;
        this.cartDetailRepository = cartDetailRepository;
        this.orderRepository = orderRepository;
        this.orderDetailRepository = orderDetailRepository;
        this.productSizeRepository = productSizeRepository;

    }

    public Size getSizeById(long id) {
        return this.sizeRepository.findById(id);
    }

    public Product createProduct(ProductDTO newProductDTO, MultipartFile file, MultipartFile[] files) {
        Product newProduct = new Product();
        String fileName = this.uploadFileService.handleSaveUploadFile(file, "product");
        if (files.length > 0) {
            List<Image> listImage = new ArrayList<>();
            for (int i = 0; i < files.length; i++) {
                MultipartFile f = files[i];
                String filename = this.uploadFileService.handleSaveUploadFile(f, "product");
                Image image = new Image();
                image.setName_image(filename);
                image.setProduct(newProduct);
                listImage.add(image);
            }
            newProduct.setImages(listImage);
        }
        if (newProductDTO.getSizeIds() != null) {
            List<Product_size> listProduct_sizes = new ArrayList<>();
            for (int i = 0; i < newProductDTO.getSizeIds().size(); i++) {
                Product_size product_size = new Product_size();
                Size size = this.getSizeById(newProductDTO.getSizeIds().get(i));
                product_size.setSize(size);
                product_size.setPrice(newProductDTO.getPrices().get(i));
                product_size.setQuanlity(newProductDTO.getQualities().get(i));
                product_size.setProduct(newProduct);
                listProduct_sizes.add(product_size);
            }
            newProduct.setProduct_sizes(listProduct_sizes);
        }

        if (newProductDTO.getAttributes() != null) {
            List<Product_attribute> listProduct_attributes = new ArrayList<>();
            for (int i = 0; i < newProductDTO.getAttributes().size(); i++) {
                Product_attribute product_attribute = new Product_attribute();
                long attribute_id = newProductDTO.getAttributes().get(i);
                Attribute attribute = this.attributeRepository.findById(attribute_id);
                product_attribute.setDescription(newProductDTO.getDescriptionAttributes().get(i));
                product_attribute.setAttributes(attribute);
                product_attribute.setProduct(newProduct);
                listProduct_attributes.add(product_attribute);

            }

            newProduct.setProduct_attributes(listProduct_attributes);
        }
        Category category = this.categoryRepository.findById(newProductDTO.getCategory_id());
        category.getProducts().add(newProduct);
        newProduct.setTag(newProductDTO.getTag());
        newProduct.setCategory(category);
        Timestamp creat_at = new Timestamp(System.currentTimeMillis());
        newProduct.setCode(newProductDTO.getCode());
        newProduct.setShortDescription(newProductDTO.getShortDescription());
        newProduct.setDescription(newProductDTO.getDescription());
        newProduct.setAvatar(fileName);
        newProduct.setCreated_at(creat_at);
        return this.productRepository.save(newProduct);
    }

    public Product updateProduct(ProductDTO updateProductDTO, MultipartFile file, MultipartFile[] files) {
        Product currentProduct = this.productRepository.findById(updateProductDTO.getId());
        // Update attribute
        if (currentProduct.getProduct_attributes() != null) {
            if (updateProductDTO.getAttributes() != null) {
                List<Product_attribute> toRemove = currentProduct.getProduct_attributes().stream()
                        .filter(pa -> !updateProductDTO.getAttributes().contains(pa.getAttributes().getId()))
                        .collect(Collectors.toList());
                toRemove.forEach(productAttribute -> {
                    currentProduct.getProduct_attributes().remove(productAttribute);
                });
                System.out.println(currentProduct.getProduct_attributes());

                for (int i = 0; i < updateProductDTO.getAttributes().size(); i++) {
                    boolean kt = true;
                    for (Product_attribute p : currentProduct.getProduct_attributes()) {
                        if (p.getAttributes().getId() == updateProductDTO.getAttributes().get(i)) {
                            p.setDescription(updateProductDTO.getDescriptionAttributes().get(i));
                            currentProduct.getProduct_attributes().add(p);
                            kt = false;
                            break;
                        }
                    }
                    if (kt == true) {
                        Product_attribute product_attribute = new Product_attribute();
                        long attribute_id = updateProductDTO.getAttributes().get(i);
                        Attribute attribute = this.attributeRepository.findById(attribute_id);
                        product_attribute.setDescription(updateProductDTO.getDescriptionAttributes().get(i));
                        product_attribute.setAttributes(attribute);
                        product_attribute.setProduct(currentProduct);
                        currentProduct.getProduct_attributes().add(product_attribute);
                    }
                }

            } else {
                currentProduct.getProduct_attributes().clear();
            }
        } else {
            for (int i = 0; i < updateProductDTO.getAttributes().size(); i++) {
                Product_attribute product_attribute = new Product_attribute();
                long attribute_id = updateProductDTO.getAttributes().get(i);
                Attribute attribute = this.attributeRepository.findById(attribute_id);
                product_attribute.setDescription(updateProductDTO.getDescriptionAttributes().get(i));
                product_attribute.setAttributes(attribute);
                product_attribute.setProduct(currentProduct);
                currentProduct.getProduct_attributes().add(product_attribute);
            }

        }
        // Update size
        if (currentProduct.getProduct_sizes() != null) {
            if (updateProductDTO.getSizeIds() != null) {
                List<Product_size> toRemove = currentProduct.getProduct_sizes().stream()
                        .filter(pz -> !updateProductDTO.getSizeIds().contains(pz.getSize().getId()))
                        .collect(Collectors.toList());
                toRemove.forEach(productSize -> {
                    currentProduct.getProduct_sizes().remove(productSize);
                });
                System.out.println(currentProduct.getProduct_sizes());

                for (int i = 0; i < updateProductDTO.getSizeIds().size(); i++) {
                    boolean kt = true;
                    for (Product_size p : currentProduct.getProduct_sizes()) {
                        if (p.getSize().getId() == updateProductDTO.getSizeIds().get(i)) {
                            p.setPrice(updateProductDTO.getPrices().get(i));
                            p.setQuanlity(updateProductDTO.getQualities().get(i));
                            currentProduct.getProduct_sizes().add(p);
                            kt = false;
                            break;
                        }
                    }
                    if (kt == true) {
                        Product_size product_size = new Product_size();
                        long size_id = updateProductDTO.getSizeIds().get(i);
                        Size size = this.sizeRepository.findById(size_id);
                        product_size.setPrice(updateProductDTO.getPrices().get(i));
                        product_size.setQuanlity(updateProductDTO.getQualities().get(i));
                        product_size.setSize(size);
                        product_size.setProduct(currentProduct);
                        currentProduct.getProduct_sizes().add(product_size);
                    }
                }

            } else {
                currentProduct.getProduct_sizes().clear();
            }
        } else {
            for (int i = 0; i < updateProductDTO.getSizeIds().size(); i++) {
                Product_size product_size = new Product_size();
                long size_id = updateProductDTO.getSizeIds().get(i);
                Size size = this.sizeRepository.findById(size_id);
                product_size.setPrice(updateProductDTO.getPrices().get(i));
                product_size.setQuanlity(updateProductDTO.getQualities().get(i));
                product_size.setSize(size);
                product_size.setProduct(currentProduct);
                currentProduct.getProduct_sizes().add(product_size);
            }

        }
        String fileName = this.uploadFileService.handleSaveUploadFile(file, "product");
        Category category = this.categoryRepository.findById(updateProductDTO.getCategory_id());
        currentProduct.setShortDescription(updateProductDTO.getShortDescription());
        currentProduct.setCategory(category);
        currentProduct.setTag(updateProductDTO.getTag());
        currentProduct.setCode(updateProductDTO.getCode());
        currentProduct.setDescription(updateProductDTO.getDescription());
        if (fileName != "")
            currentProduct.setAvatar(fileName);
        return this.productRepository.save(currentProduct);
    }

    public ProductShowDTO getProductByID(long id) {
        Product product = this.productRepository.findById(id);
        return (productShowMapper.toDto(product));
    }

    public List<AttributeDTO> getAllAttributes() {
        List<Attribute> attributes = this.attributeRepository.findAll();
        return attributes.stream().map(attributeMapper::toDTO).collect(Collectors.toList());
    }

    public Page<ProductShowDTO> getAllProducts(Pageable pageable) {
        Page<Product> products = this.productRepository.findAll(pageable);
        return products.map(productShowMapper::toDto);
    }

    public List<SizeDTO> getAllSize() {
        return this.sizeRepository.findAll().stream().map(sizeMapper::toDTO).collect(Collectors.toList());
    }

    public Page<ProductShowDTO> getProductsWithSpec(Pageable page, ProductCriteriaDTO productCriteriaDTO) {

        Specification<Product> combinedSpec = Specification.where(null);

        if (productCriteriaDTO.getCategory() != null && productCriteriaDTO.getCategory().isPresent()) {
            Specification<Product> currentSpecs = ProductSpec.matchCategory(productCriteriaDTO.getCategory().get());
            combinedSpec = combinedSpec.and(currentSpecs);
        }
        if (productCriteriaDTO.getName() != null && productCriteriaDTO.getName().isPresent()) {
            Specification<Product> currentSpecs = ProductSpec.nameLike(productCriteriaDTO.getName().get());
            combinedSpec = combinedSpec.and(currentSpecs);
        }
        if (productCriteriaDTO.getSort() != null && productCriteriaDTO.getSort().isPresent()) {
            Specification<Product> currentSpecs = ProductSpec.orderByPrice(productCriteriaDTO.getSort().get());
            combinedSpec = combinedSpec.and(currentSpecs);
        }

        return this.productRepository.findAll(combinedSpec, page).map(productShowMapper::toDto);
    }

    public void handleAddProductToCart(CartDetail cartDetail, HttpSession session, String email, long productId) {

        User user = this.userService.getUserByEmail(email);
        if (user != null) {
            // check user đã có Cart chưa ? nếu chưa -> tạo mới
            Cart cart = this.cartRepository.findByUser(user);

            if (cart == null) {
                // tạo mới cart
                Cart otherCart = new Cart();
                otherCart.setUser(user);
                otherCart.setSum(0);

                cart = this.cartRepository.save(otherCart);
            }

            // save cart_detail
            // // tìm product by id

            Optional<Product> productOptional = Optional.of(this.productRepository.findById(productId));
            if (productOptional.isPresent()) {
                Product realProduct = productOptional.get();

                // check sản phẩm đã từng được thêm vào giỏ hàng trước đây chưa ?
                CartDetail oldDetail = this.cartDetailRepository.findByCartAndProductAndSizeItem(cart,
                        realProduct, cartDetail.getSizeItem());
                //
                if (oldDetail == null) {
                    cartDetail.setCart(cart);
                    cartDetail.setProduct(realProduct);
                    this.cartDetailRepository.save(cartDetail);

                    // update cart (sum);
                    int s = cart.getSum() + 1;
                    cart.setSum(s);
                    this.cartRepository.save(cart);
                    session.setAttribute("sum", s);
                } else {
                    oldDetail.setQuantity(oldDetail.getQuantity() + cartDetail.getQuantity());
                    this.cartDetailRepository.save(oldDetail);
                }

            }

        }
    }

    public Cart fetchByUser(User user) {
        return this.cartRepository.findByUser(user);
    }

    public void handleRemoveCartDetail(long cartDetailId, HttpSession session) {
        Optional<CartDetail> cartDetailOptional = this.cartDetailRepository.findById(cartDetailId);
        if (cartDetailOptional.isPresent()) {
            CartDetail cartDetail = cartDetailOptional.get();

            Cart currentCart = cartDetail.getCart();
            // delete cart-detail
            this.cartDetailRepository.deleteById(cartDetailId);

            // update cart
            if (currentCart.getSum() > 1) {
                // update current cart
                int s = currentCart.getSum() - 1;
                currentCart.setSum(s);
                session.setAttribute("sum", s);
                this.cartRepository.save(currentCart);
            } else {
                // delete cart (sum = 1)
                this.cartRepository.deleteById(currentCart.getId());
                session.setAttribute("sum", 0);
            }
        }
    }

    public void handleUpdateCartBeforeCheckout(List<CartDetail> cartDetails) {
        for (CartDetail cartDetail : cartDetails) {
            Optional<CartDetail> cdOptional = this.cartDetailRepository.findById(cartDetail.getId());
            if (cdOptional.isPresent()) {
                CartDetail currentCartDetail = cdOptional.get();
                currentCartDetail.setQuantity(cartDetail.getQuantity());
                this.cartDetailRepository.save(currentCartDetail);
            }
        }
    }

    @Transactional
    public void handlePlaceOrder(User user, HttpSession session, Order order, String uuid, String payment_method) {

        // step 1: get cart by user
        Cart cart = this.cartRepository.findByUser(user);
        if (cart != null) {
            List<CartDetail> cartDetails = cart.getCartDetails();
            if (cartDetails != null) {
                order.setUser(user);
                order.setStatus("PENDING");
                order.setPayment_status("PAYMENT_UNPAID");
                order.setPayment_method(payment_method);
                order.setPayment_ref(payment_method.equals("COD") ? "UNKNOW" : uuid);
                Timestamp created_at = new Timestamp(System.currentTimeMillis());
                order.setCreate_at(created_at);
                double sum = 0;
                for (CartDetail cd : cartDetails) {
                    sum += cd.getPrice() * cd.getQuantity();
                }
                order.setTotalPrice(sum);
                order = this.orderRepository.save(order);

                // create orderDetail

                for (CartDetail cd : cartDetails) {
                    OrderDetail orderDetail = new OrderDetail();
                    orderDetail.setOrder(order);
                    orderDetail.setProduct(cd.getProduct());
                    orderDetail.setSizeItem(cd.getSizeItem());
                    orderDetail.setPrice(cd.getPrice());
                    orderDetail.setQuantity(cd.getQuantity());

                    this.orderDetailRepository.save(orderDetail);
                    Size size = this.sizeRepository.findByName_size(cd.getSizeItem().trim());
                    Product_size product = productSizeRepository.findQuantityById(cd.getProduct(), size);
                    product.setQuanlity(product.getQuantity() - cd.getQuantity());
                    productSizeRepository.save(product);
                }

                // step 2: delete cart_detail and cart
                for (CartDetail cd : cartDetails) {
                    this.cartDetailRepository.deleteById(cd.getId());
                }

                this.cartRepository.deleteById(cart.getId());

                // step 3 : update session
                session.setAttribute("sum", 0);
            }
        }

    }

    public List<Product> getProductsByTag(String Tag) {
        return this.productRepository.findTop8ByTag(Tag);
    }

    public void deleteProduct(Long id) {
        this.productRepository.deleteById(id);

    }

    // public void updatePaymentStatus(String paymentRef, String paymentStatus,
    // String orderStatus) {
    // Optional<Order> orderOptional =
    // this.orderRepository.findByPayment_ref(paymentRef);
    // if (orderOptional.isPresent()) {
    // // update
    // Order order = orderOptional.get();
    // order.setStatus(orderStatus);
    // order.setPayment_status(paymentStatus);
    // this.orderRepository.save(order);
    // }

    // }
    public void updatePaymentStatus(String paymentRef, String paymentStatus, String orderStatus) {
        Optional<Order> orderOptional = this.orderRepository.findByPayment_ref(paymentRef);
        if (orderOptional.isPresent()) {
            if (paymentStatus == "PAYMENT_FAILED") {
                List<OrderDetail> orderDetails = orderOptional.get().getOrderDetails();
                for (OrderDetail od : orderDetails) {

                    Size size = this.sizeRepository.findByName_size(od.getSizeItem().trim());
                    Product_size product = productSizeRepository.findQuantityById(od.getProduct(), size);
                    product.setQuanlity(product.getQuantity() + od.getQuantity());
                    productSizeRepository.save(product);
                }
            }
            // update
            Order order = orderOptional.get();
            order.setStatus(orderStatus);
            order.setPayment_status(paymentStatus);
            this.orderRepository.save(order);
        }

    }

}