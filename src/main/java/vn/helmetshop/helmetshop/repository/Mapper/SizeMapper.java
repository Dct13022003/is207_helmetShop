package vn.helmetshop.helmetshop.repository.Mapper;

import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import vn.helmetshop.helmetshop.domain.Size;
import vn.helmetshop.helmetshop.domain.dto.SizeDTO;

@Mapper
public interface SizeMapper {
    SizeMapper INSTANCE = Mappers.getMapper(SizeMapper.class);

    SizeDTO toDTO(Size size);

    Size toEntity(SizeDTO sizeDTO);
}
