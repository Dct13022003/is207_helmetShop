package vn.helmetshop.helmetshop.domain;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

@Entity
public class Size implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String name_size;

    @OneToMany(mappedBy = "size")
    private List<Product_size> product_sizes;

    public Size() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName_size() {
        return name_size;
    }

    public void setName_size(String name_size) {
        this.name_size = name_size;
    }

    public List<Product_size> getProduct_sizes() {
        return product_sizes;
    }

    public void setProduct_sizes(List<Product_size> product_sizes) {
        this.product_sizes = product_sizes;
    }
}
