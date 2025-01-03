package vn.helmetshop.helmetshop.domain.dto;

import java.util.List;

public class ValidationResponse {
    private boolean valid;
    private String message;
    private List<InvalidProductDTO> invalidProducts;

    public ValidationResponse(boolean valid, String message, List<InvalidProductDTO> invalidProducts) {
        this.valid = valid;
        this.message = message;
        this.invalidProducts = invalidProducts;
    }

    public boolean isValid() {
        return valid;
    }

    public void setValid(boolean valid) {
        this.valid = valid;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public List<InvalidProductDTO> getInvalidProducts() {
        return invalidProducts;
    }

    public void setInvalidProducts(List<InvalidProductDTO> invalidProducts) {
        this.invalidProducts = invalidProducts;
    }

}