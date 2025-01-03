package vn.helmetshop.helmetshop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import vn.helmetshop.helmetshop.domain.Attribute;

@Repository
public interface AttributeRepository extends JpaRepository<Attribute, Long> {
    List<Attribute> findAll();

    Attribute findById(long id);

    void deleteById(long id);
}
