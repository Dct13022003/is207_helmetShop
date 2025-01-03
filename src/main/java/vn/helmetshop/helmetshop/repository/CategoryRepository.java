package vn.helmetshop.helmetshop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.helmetshop.helmetshop.domain.Category;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Long> {
    List<Category> findAll();

    Category save(Category category);

    Category findById(long id);

    void deleteById(Long id);
}
