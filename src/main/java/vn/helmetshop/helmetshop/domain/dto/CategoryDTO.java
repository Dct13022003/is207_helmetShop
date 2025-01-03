package vn.helmetshop.helmetshop.domain.dto;

import java.io.Serializable;

public class CategoryDTO implements Serializable {
    private long id;
    private String name;
    private String thumbnail;

    public CategoryDTO() {
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}
