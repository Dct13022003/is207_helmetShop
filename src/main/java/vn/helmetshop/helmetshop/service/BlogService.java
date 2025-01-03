package vn.helmetshop.helmetshop.service;

import java.sql.Timestamp;
import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import vn.helmetshop.helmetshop.domain.Blog;
import vn.helmetshop.helmetshop.domain.BlogCategory;
import vn.helmetshop.helmetshop.repository.BlogCategoryRepository;
import vn.helmetshop.helmetshop.repository.BlogRepository;

@Service
public class BlogService {
    private final UploadFileService uploadFileService;
    private final BlogRepository blogRepository;
    private final BlogCategoryRepository blogCategoryRepository;

    public BlogService(UploadFileService uploadFileService, BlogRepository blogRepository,
            BlogCategoryRepository blogCategoryRepository) {
        this.uploadFileService = uploadFileService;
        this.blogRepository = blogRepository;
        this.blogCategoryRepository = blogCategoryRepository;
    }

    public Blog getCreateBlog(Blog newBlog, MultipartFile file) {
        String fileBannerName = this.uploadFileService.handleSaveUploadFile(file, "blog");
        BlogCategory blogCategory = this.blogCategoryRepository.findByName(newBlog.getBlogCategory().getName());
        Timestamp creat_at = new Timestamp(System.currentTimeMillis());
        newBlog.setBanner(fileBannerName);
        newBlog.setCreated_at(creat_at);
        newBlog.setBlogCategory(blogCategory);
        return this.blogRepository.save(newBlog);
    }

    public Page<Blog> getAllBlogsPage(Pageable pageable) {
        Page<Blog> blogs = this.blogRepository.findAll(pageable);
        return blogs;
    }

    public Optional<Blog> getBlogByID(Long id) {
        return this.blogRepository.findById(id);
    }

    public Blog updateBlog(Blog blogUpdate, MultipartFile file) {

        Optional<Blog> upBlog = (this.blogRepository.findById(blogUpdate.getId()));
        if (upBlog.isPresent()) {
            if (file.getOriginalFilename() != "") {
                String fileBannerName = this.uploadFileService.handleSaveUploadFile(file, "Blog");
                blogUpdate.setBanner(fileBannerName);
            } else {
                blogUpdate.setBanner(upBlog.get().getBanner());
            }

        }

        Timestamp update_at = new Timestamp(System.currentTimeMillis());

        blogUpdate.setUpdated_at(update_at);

        return this.blogRepository.save(blogUpdate);
    }

    public List<Blog> findByBlogCategory(BlogCategory blogCategory) {
        return this.blogRepository.findByBlogCategory(blogCategory);
    }

    public List<Blog> findByBlogCategoryNotBlogCurrent(BlogCategory blogCategory, Long id) {
        return this.blogRepository.findByBlogCategoryAndIdNot(blogCategory, id);
    }
}
