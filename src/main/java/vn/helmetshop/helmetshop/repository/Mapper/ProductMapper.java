package vn.helmetshop.helmetshop.repository.Mapper;

import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import vn.helmetshop.helmetshop.domain.Product;

import vn.helmetshop.helmetshop.domain.dto.ProductDTO;

@Mapper
public interface ProductMapper {
    ProductMapper INSTANCE = Mappers.getMapper(ProductMapper.class);

    Product toEntity(ProductDTO productDTO);

    ProductDTO toDTO(Product product);
}
