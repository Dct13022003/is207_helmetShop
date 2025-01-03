package vn.helmetshop.helmetshop.domain.dto;

public class InvalidProductDTO {
    private Long productId;
    private String productName;
    private Long requestedQuantity;
    private int availableQuantity;

    public InvalidProductDTO(Long productId, String productName, long requestedQuantity, int availableQuantity) {
        this.productId = productId;
        this.productName = productName;
        this.requestedQuantity = requestedQuantity;
        this.availableQuantity = availableQuantity;
    }
}
