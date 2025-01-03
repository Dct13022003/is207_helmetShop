package vn.helmetshop.helmetshop.repository.Mapper;

import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import vn.helmetshop.helmetshop.domain.Attribute;
import vn.helmetshop.helmetshop.domain.dto.AttributeDTO;

@Mapper
public interface AttributeMapper {
    AttributeMapper INSTANCE = Mappers.getMapper(AttributeMapper.class);

    AttributeDTO toDTO(Attribute attribute);

    Attribute toEntity(AttributeDTO attributeDTO);
}
