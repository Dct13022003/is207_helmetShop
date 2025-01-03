package vn.helmetshop.helmetshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.helmetshop.helmetshop.domain.Blog;
import vn.helmetshop.helmetshop.domain.BlogCategory;

import java.util.List;

@Repository
public interface BlogRepository extends JpaRepository<Blog, Long> {
    Blog save(Blog blog);

    List<Blog> findByBlogCategory(BlogCategory blogCategory);

    List<Blog> findByBlogCategoryAndIdNot(BlogCategory blogCategory,Long id);
}
