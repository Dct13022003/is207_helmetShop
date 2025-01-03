package vn.helmetshop.helmetshop.controller.client;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import vn.helmetshop.helmetshop.domain.Blog;
import vn.helmetshop.helmetshop.domain.BlogCategory;
import vn.helmetshop.helmetshop.repository.BlogRepository;
import vn.helmetshop.helmetshop.service.BlogService;

@Controller
public class BlogConttroler {
    private final BlogRepository blogRepository;
    private final BlogService blogService;

    public BlogConttroler(BlogRepository blogRepository, BlogService blogService) {
        this.blogRepository = blogRepository;
        this.blogService = blogService;
    }

    @GetMapping("/blog/blog-detail/{id}")
    public String getBlogDetailPage(@PathVariable("id") Long id, Model model) {
        Optional<Blog> blog_detail = this.blogRepository.findById(id);
        List<Blog> listBlogNotCurrent = this.blogService
                .findByBlogCategoryNotBlogCurrent(blog_detail.get().getBlogCategory(), id);
        model.addAttribute("blog_detail", blog_detail.get());
        model.addAttribute("listBlogs", listBlogNotCurrent);
        return "user/blog/blog_detail";
    }

    @GetMapping("/blog")
    public String getBlogPage() {

        return "user/blog/new";
    }

    @GetMapping("/thong-tin-su-kien")
    public String getThong_tin_su_kienPage(Model model) {
        BlogCategory blogCategory = new BlogCategory();
        blogCategory.setId(1);
        List<Blog> listBlogs = this.blogService.findByBlogCategory(blogCategory);
        model.addAttribute("listBlogs", listBlogs);
        return "user/blog/thong-tin-su-kien";
    }

    @GetMapping("/thong-tin-non-bao-hiem")
    public String getThong_tin_non_bao_hiemPage(Model model) {
        BlogCategory blogCategory = new BlogCategory();
        blogCategory.setId(2);
        List<Blog> listBlogs = this.blogService.findByBlogCategory(blogCategory);
        model.addAttribute("listBlogs", listBlogs);
        return "user/blog/thong-tin-su-kien";
    }
}
