package vn.helmetshop.helmetshop.domain.dto;

import java.util.Optional;

public class ProductCriteriaDTO {
    private Optional<String> page;
    private Optional<Long> price;
    private Optional<Long> sort;
    private Optional<Long> category;
    private Optional<String> name;
    
    public Optional<String> getPage() {
        return page;
    }
    public Optional<String> getName() {
        return name;
    }
    public void setName(Optional<String> name) {
        this.name = name;
    }
    public void setPage(Optional<String> page) {
        this.page = page;
    }
    public Optional<Long> getPrice() {
        return price;
    }
    public void setPrice(Optional<Long> price) {
        this.price = price;
    }
    public Optional<Long> getSort() {
        return sort;
    }
    public void setSort(Optional<Long> sort) {
        this.sort = sort;
    }
    public Optional<Long> getCategory() {
        return category;
    }
    public void setCategory(Optional<Long> category) {
        this.category = category;
    }
    
}
