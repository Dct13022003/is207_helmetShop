package vn.helmetshop.helmetshop.service;

import java.sql.Timestamp;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import vn.helmetshop.helmetshop.domain.Category;

import vn.helmetshop.helmetshop.domain.dto.CategoryDTO;
import vn.helmetshop.helmetshop.repository.CategoryRepository;

import vn.helmetshop.helmetshop.repository.Mapper.CategoryMapper;

@Service
public class CategorySevice {
    private final CategoryRepository categoryRepository;
    private final UploadFileService uploadFileService;
    private CategoryMapper categoryMapper = CategoryMapper.INSTANCE;

    public CategorySevice(CategoryRepository categoryRepository, UploadFileService uploadFileService) {
        this.categoryRepository = categoryRepository;
        this.uploadFileService = uploadFileService;
    }

    public Category getCreateCategory(Category newCategory, MultipartFile file) {
        String fileThumbnailName = this.uploadFileService.handleSaveUploadFile(file, "category");

        Timestamp creat_at = new Timestamp(System.currentTimeMillis());
        newCategory.setThumbnail(fileThumbnailName);
        newCategory.setCreated_at(creat_at);
        return this.categoryRepository.save(newCategory);
    }

    public List<CategoryDTO> getAllCategories() {
        List<Category> categories = this.categoryRepository.findAll();

        return categories.stream().map(categoryMapper::toDTO)
                .collect(Collectors.toList());
    }

    public Page<Category> getAllCategoriesPage(Pageable pageable) {
        Page<Category> categories = this.categoryRepository.findAll(pageable);
        return categories;
    }

    public Category getCategoryById(long id) {
        return this.categoryRepository.findById(id);

    }

    public Category updateCategory(Category category, MultipartFile file) {

        Optional<Category> upCategory = Optional.of(this.categoryRepository.findById(category.getId()));
        if (upCategory.isPresent()) {
            if (file.getOriginalFilename() != "") {
                String fileThumbnailName = this.uploadFileService.handleSaveUploadFile(file, "category");
                category.setThumbnail(fileThumbnailName);
            } else {
                category.setThumbnail(upCategory.get().getThumbnail());
            }

        }

        Timestamp update_at = new Timestamp(System.currentTimeMillis());

        category.setUpdated_at(update_at);

        return this.categoryRepository.save(category);
    }

    public void deleCategory(Long id) {
        this.categoryRepository.deleteById(id);
    }

}
