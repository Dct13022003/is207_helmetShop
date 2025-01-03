package vn.helmetshop.helmetshop.repository.Mapper;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.factory.Mappers;

import vn.helmetshop.helmetshop.domain.Product_attribute;
import vn.helmetshop.helmetshop.domain.dto.Product_attributeDTO;

@Mapper(uses = AttributeMapper.class)
public interface Product_attributeMapper {
    Product_attributeMapper INSTANCE = Mappers.getMapper(Product_attributeMapper.class);

    @Mapping(source = "attributes", target = "attributeDTO")
    Product_attributeDTO toDTO(Product_attribute product_attribute);

    @Mapping(source = "attributeDTO", target = "attributes")
    Product_attribute toEntity(Product_attributeDTO product_attributeDTO);

}
