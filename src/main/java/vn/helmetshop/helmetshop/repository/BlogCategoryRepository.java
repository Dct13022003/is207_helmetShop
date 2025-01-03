package vn.helmetshop.helmetshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.helmetshop.helmetshop.domain.BlogCategory;

@Repository
public interface BlogCategoryRepository extends JpaRepository<BlogCategory, Long> {
    BlogCategory findByName(String name);
}
