package vn.helmetshop.helmetshop.controller.admin;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import vn.helmetshop.helmetshop.domain.dto.AttributeDTO;
import vn.helmetshop.helmetshop.domain.dto.CategoryDTO;
import vn.helmetshop.helmetshop.domain.dto.ProductDTO;
import vn.helmetshop.helmetshop.domain.dto.ProductShowDTO;
import vn.helmetshop.helmetshop.domain.dto.SizeDTO;
import vn.helmetshop.helmetshop.service.CategorySevice;
import vn.helmetshop.helmetshop.service.ProductService;
import vn.helmetshop.helmetshop.service.UploadFileService;

@Controller
public class ProductController {

    private final ProductService productService;
    private final CategorySevice categorySevice;

    public ProductController(UploadFileService uploadFileService, ProductService productService,
            CategorySevice categorySevice) {

        this.productService = productService;
        this.categorySevice = categorySevice;
    }

    @GetMapping("/admin/product")
    public String getProductPage(Model model, @RequestParam("page") Optional<String> pageOptional) {
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
        Pageable pageable = PageRequest.of(page - 1, 3);
        Page<ProductShowDTO> productsPage = this.productService.getAllProducts(pageable);
        List<ProductShowDTO> products = productsPage.getContent();

        model.addAttribute("productShow", products);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", productsPage.getTotalPages());

        return "admin/product/show";
    }

    @GetMapping("/admin/product/create")
    public String getCreateProductPage(Model model) {
        List<CategoryDTO> categories = this.categorySevice.getAllCategories();

        model.addAttribute("newProductDTO", new ProductDTO());
        model.addAttribute("categories", categories);
        return "admin/product/create";
    }

    @PostMapping(value = "/admin/product/create")
    public String createProduct(
            @ModelAttribute("newProductDTO") ProductDTO newProductDTO,
            @RequestParam("inputImage") MultipartFile file,
            @RequestParam("inputImages") MultipartFile[] files) {
        this.productService.createProduct(newProductDTO, file, files);
        return "redirect:/admin/product";
    }

    @GetMapping(value = "/admin/product/update/{id}")
    public String getUpdateProductPage(Model model, @PathVariable long id) {
        ProductShowDTO showProductDTO = this.productService.getProductByID(id);
        List<CategoryDTO> updateCategoryDTO = this.categorySevice.getAllCategories();
        ProductDTO productDTO = new ProductDTO();
        productDTO.setId(showProductDTO.getId());
        productDTO.setCode(showProductDTO.getCode());
        productDTO.setDescription(showProductDTO.getDescription());
        productDTO.setShortDescription(showProductDTO.getShortDescription());
        model.addAttribute("updateProductDTO", productDTO);
        model.addAttribute("showProductDTO", showProductDTO);
        model.addAttribute("updateCategoryDTO", updateCategoryDTO);
        return "admin/product/update";
    }

    @PostMapping(value = "/admin/product/update")
    public String postUpdateUser(Model model,
            @ModelAttribute("updateProductDTO") ProductDTO updateProduct,
            @RequestParam("inputImage") MultipartFile file,
            @RequestParam("inputImages") MultipartFile[] files) {
        System.out.println(updateProduct);
        this.productService.updateProduct(updateProduct, file, files);
        return "redirect:/admin/product";
    }

    @GetMapping("/api/attributes")
    @ResponseBody
    public List<AttributeDTO> getAttribute() {
        return this.productService.getAllAttributes();
    }

    @GetMapping("/api/sizes")
    @ResponseBody
    public List<SizeDTO> getSize() {
        return this.productService.getAllSize();
    }

    @PostMapping(value = "admin/product/delete/{id}")
    public String deleteProduct(@PathVariable("id") Long id) {
        this.productService.deleteProduct(id);
        return "redirect:/admin/product";
    }

}
