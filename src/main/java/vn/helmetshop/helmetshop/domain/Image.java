package vn.helmetshop.helmetshop.domain;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "images")
public class Image {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String name_image;

    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;

    public Image() {
    }

    public String getName_image() {
        return name_image;
    }

    public void setName_image(String name_image) {
        this.name_image = name_image;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

}
