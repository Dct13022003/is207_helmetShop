package vn.helmetshop.helmetshop.repository.Mapper;

import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import vn.helmetshop.helmetshop.domain.Category;

import vn.helmetshop.helmetshop.domain.dto.CategoryDTO;

@Mapper
public interface CategoryMapper {
    CategoryMapper INSTANCE = Mappers.getMapper(CategoryMapper.class);

    Category toEntity(CategoryDTO categoryDTO);

    CategoryDTO toDTO(Category category);

}