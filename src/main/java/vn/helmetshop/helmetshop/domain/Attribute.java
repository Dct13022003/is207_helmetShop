package vn.helmetshop.helmetshop.domain;

import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "attributes")
public class Attribute {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String code;
    private String title;
    @OneToMany(mappedBy = "attributes", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Product_attribute> product_attributes;

    public Attribute() {
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public List<Product_attribute> getProduct_attributes() {
        return product_attributes;
    }

    public void setProduct_attributes(List<Product_attribute> product_attributes) {
        this.product_attributes = product_attributes;
    }

    public void saveOrUpdateAttribute(Attribute attribute) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'saveOrUpdateAttribute'");
    }

}
