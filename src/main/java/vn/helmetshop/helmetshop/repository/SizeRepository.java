package vn.helmetshop.helmetshop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import vn.helmetshop.helmetshop.domain.Size;

@Repository
public interface SizeRepository extends JpaRepository<Size, Long> {

    Size findById(long id);

    Size save(Size size);

    List<Size> findAll();

    @Query(value = "SELECT * FROM size WHERE name_size = :name", nativeQuery = true)
    Size findByName_size(@Param("name") String name);

}
