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

import vn.helmetshop.helmetshop.domain.Blog;
import vn.helmetshop.helmetshop.service.BlogService;

@Controller
public class BlogController {
    private final BlogService blogService;

    public BlogController(BlogService blogService) {
        this.blogService = blogService;
    }

    @GetMapping("/admin/blog")
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
        Page<Blog> blogsPage = this.blogService.getAllBlogsPage(pageable);
        List<Blog> blogs = blogsPage.getContent();

        model.addAttribute("blogsShow", blogs);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", blogsPage.getTotalPages());

        return "admin/blog/show";
    }

    @GetMapping("/admin/blog/create")
    public String getCreateBlogPage(Model model) {
        Blog blog = new Blog();
        model.addAttribute("newBlog", blog);
        return "admin/blog/create";
    }

    @PostMapping(value = "/admin/blog/create")
    public String getCreateCategory(Model model,
            @ModelAttribute("newBlog") Blog newBlog,
            @RequestParam("content") String name,
            @RequestParam("inputImageBanner") MultipartFile file) {

        this.blogService.getCreateBlog(newBlog, file);
        return "redirect:/admin/blog";
    }

    @GetMapping("/admin/blog/update/{id}")
    public String getUpdateBlogPage(@PathVariable long id, Model model) {
        Optional<Blog> blog = this.blogService.getBlogByID(id);
        model.addAttribute("blogUpdate", blog.get());
        return "admin/blog/update";
    }

    @PostMapping(value = "/admin/blog/update")
    public String postUpdateCategory(@ModelAttribute("blogUpdate") Blog blogUpdate,
            @RequestParam("inputImageBanner") MultipartFile file) {
        this.blogService.updateBlog(blogUpdate, file);
        return "redirect:/admin/blog";
    }
}
