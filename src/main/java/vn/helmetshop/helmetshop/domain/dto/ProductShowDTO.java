package vn.helmetshop.helmetshop.domain.dto;

import java.io.Serializable;
import java.util.List;

import vn.helmetshop.helmetshop.domain.Image;

public class ProductShowDTO implements Serializable {
    private long id;
    private String code;
    private String avatar;
    private String description;
    private String shortDescription;
    private CategoryDTO categoryDTO;
    private String tag;
    private List<Product_sizeDTO> product_sizeDTOs;
    private List<Product_attributeDTO> product_attributeDTOs;
    private List<Image> imageDTOs;

    public ProductShowDTO() {
    }

    public String getCode() {
        return code;
    }

    public String getShortDescription() {
        return shortDescription;
    }

    public void setShortDescription(String shortDescription) {
        this.shortDescription = shortDescription;
    }

    public List<Product_sizeDTO> getProduct_sizeDTOs() {
        return product_sizeDTOs;
    }

    public void setProduct_sizeDTOs(List<Product_sizeDTO> product_sizeDTOs) {
        this.product_sizeDTOs = product_sizeDTOs;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public CategoryDTO getCategoryDTO() {
        return categoryDTO;
    }

    public void setCategoryDTO(CategoryDTO categoryDTO) {
        this.categoryDTO = categoryDTO;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public List<Product_attributeDTO> getProduct_attributeDTOs() {
        return product_attributeDTOs;
    }

    public void setProduct_attributeDTOs(List<Product_attributeDTO> product_attributeDTOs) {
        this.product_attributeDTOs = product_attributeDTOs;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<Image> getImageDTOs() {
        return imageDTOs;
    }

    public void setImageDTOs(List<Image> imageDTOs) {
        this.imageDTOs = imageDTOs;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

}
