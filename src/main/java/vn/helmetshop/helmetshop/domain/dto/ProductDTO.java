package vn.helmetshop.helmetshop.domain.dto;

import java.io.Serializable;
import java.util.List;

public class ProductDTO implements Serializable {
    private long id;
    private String code;
    private String description;
    private String shortDescription;
    private List<Long> sizeIds;
    private List<Float> prices;
    private String tag;
    private List<Long> qualities;
    private long category_id;
    private List<Long> attributes;
    private List<String> descriptionAttributes;

    public String getCode() {
        return code;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public List<String> getDescriptionAttributes() {
        return descriptionAttributes;
    }

    public void setDescriptionAttributes(List<String> descriptionAttributes) {
        this.descriptionAttributes = descriptionAttributes;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<Long> getSizeIds() {
        return sizeIds;
    }

    public void setSizeIds(List<Long> sizeIds) {
        this.sizeIds = sizeIds;
    }

    public List<Long> getQualities() {
        return qualities;
    }

    public void setQualities(List<Long> qualities) {
        this.qualities = qualities;
    }

    public long getCategory_id() {
        return category_id;
    }

    public void setCategory_id(long category_id) {
        this.category_id = category_id;
    }

    public List<Long> getAttributes() {
        return attributes;
    }

    public void setAttributes(List<Long> attributes) {
        this.attributes = attributes;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public List<Float> getPrices() {
        return prices;
    }

    public void setPrices(List<Float> prices) {
        this.prices = prices;
    }

    public String getShortDescription() {
        return shortDescription;
    }

    public void setShortDescription(String shortDescription) {
        this.shortDescription = shortDescription;
    }

}
