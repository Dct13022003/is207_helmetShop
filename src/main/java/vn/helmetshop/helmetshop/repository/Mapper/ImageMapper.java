package vn.helmetshop.helmetshop.repository.Mapper;

import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;
import vn.helmetshop.helmetshop.domain.Image;
import vn.helmetshop.helmetshop.domain.dto.ImageDTO;

@Mapper
public interface ImageMapper {
    ImageMapper INSTANCE = Mappers.getMapper(ImageMapper.class);

    Image toEntity(ImageDTO imageDTO);

    ImageDTO toDTO(Image image);

}
