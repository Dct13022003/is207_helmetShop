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
import org.springframework.web.multipart.MultipartFile;

import vn.helmetshop.helmetshop.domain.Category;
import vn.helmetshop.helmetshop.service.CategorySevice;

@Controller
public class CategoryController {

    private final CategorySevice categorySevice;

    public CategoryController(CategorySevice categorySevice) {

        this.categorySevice = categorySevice;
    }

    @GetMapping("/admin/category")
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
        Page<Category> categoriesPage = this.categorySevice.getAllCategoriesPage(pageable);
        List<Category> categories = categoriesPage.getContent();

        model.addAttribute("categoriesShow", categories);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", categoriesPage.getTotalPages());

        return "admin/category/show";
    }

    @GetMapping("/admin/category/create")
    public String getCreateCategoryPage(Model model) {
        model.addAttribute("newCategory", new Category());
        return "admin/category/create";
    }

    @PostMapping(value = "/admin/category/create")
    public String getCreateCategory(Model model,
            @ModelAttribute("newCategory") Category newCategory,
            @RequestParam("inputImageThumbnail") MultipartFile file) {

        this.categorySevice.getCreateCategory(newCategory, file);
        return "redirect:/admin/category";
    }

    @GetMapping(value = "/admin/category/update/{id}")
    public String getUpdateCategoryPage(@PathVariable long id, Model model) {
        Category category = this.categorySevice.getCategoryById(id);
        model.addAttribute("categoryUpdate", category);
        return "admin/category/update";
    }

    @PostMapping(value = "/admin/category/update")
    public String postUpdateCategory(@ModelAttribute("categoryUpdate") Category categoryUpdate,
            @RequestParam("inputImageThumbnail") MultipartFile file) {
        this.categorySevice.updateCategory(categoryUpdate, file);
        return "redirect:/admin/category";
    }

    @PostMapping(value = "admin/category/delete/{id}")
    public String deleteCategory(@PathVariable("id") Long id) {
        this.categorySevice.deleCategory(id);
        return "redirect:/admin/category";
    }

}
