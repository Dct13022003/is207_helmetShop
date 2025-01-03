package vn.helmetshop.helmetshop.domain.dto;

public class Product_sizeDTO {
    private long id;
    private long quantity;
    private long price;
    private SizeDTO sizeDTO;

    public Product_sizeDTO() {
    }

    public SizeDTO getSizeDTO() {
        return sizeDTO;
    }

    public void setSizeDTO(SizeDTO sizeDTO) {
        this.sizeDTO = sizeDTO;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getQuantity() {
        return quantity;
    }

    public void setQuantity(long quantity) {
        this.quantity = quantity;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }
}
