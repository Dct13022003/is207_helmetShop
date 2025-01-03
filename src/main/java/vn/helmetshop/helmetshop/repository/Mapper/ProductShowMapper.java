package vn.helmetshop.helmetshop.repository.Mapper;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.factory.Mappers;

import vn.helmetshop.helmetshop.domain.Product;
import vn.helmetshop.helmetshop.domain.dto.ProductShowDTO;

@Mapper(uses = { Product_attributeMapper.class, Product_sizeMapper.class })
public interface ProductShowMapper {
    ProductShowMapper INSTANCE = Mappers.getMapper(ProductShowMapper.class);

    @Mapping(source = "categoryDTO", target = "category")
    @Mapping(source = "product_sizeDTOs", target = " product_sizes")
    @Mapping(source = "product_attributeDTOs", target = "product_attributes")
    @Mapping(source = "imageDTOs",target="images")
    Product toEntity(ProductShowDTO productShowDTO);

    @Mapping(source = "category", target = "categoryDTO")
    @Mapping(source = "product_sizes", target = "product_sizeDTOs")
    @Mapping(source = "product_attributes", target = "product_attributeDTOs")
    @Mapping(source = "images",target="imageDTOs")
    ProductShowDTO toDto(Product product);
}
