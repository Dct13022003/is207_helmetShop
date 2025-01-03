package vn.helmetshop.helmetshop.repository.Mapper;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.factory.Mappers;

import vn.helmetshop.helmetshop.domain.Product_size;
import vn.helmetshop.helmetshop.domain.dto.Product_sizeDTO;

@Mapper(uses = SizeMapper.class)
public interface Product_sizeMapper {
    Product_sizeMapper INSTANCE = Mappers.getMapper(Product_sizeMapper.class);

    @Mapping(source = "size", target = "sizeDTO")
    Product_sizeDTO toDTO(Product_size product_size);

    @Mapping(source = "sizeDTO", target = "size")
    Product_size toEntity(Product_sizeDTO product_sizeDTO);
}
