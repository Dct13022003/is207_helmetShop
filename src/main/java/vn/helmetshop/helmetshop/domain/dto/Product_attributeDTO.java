package vn.helmetshop.helmetshop.domain.dto;

public class Product_attributeDTO {
    private long id;
    private String description;
    private AttributeDTO attributeDTO;

    public Product_attributeDTO() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public AttributeDTO getAttributeDTO() {
        return attributeDTO;
    }

    public void setAttributeDTO(AttributeDTO attributeDTO) {
        this.attributeDTO = attributeDTO;
    }
}
