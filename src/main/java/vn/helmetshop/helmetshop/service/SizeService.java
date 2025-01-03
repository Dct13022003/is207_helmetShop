package vn.helmetshop.helmetshop.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import vn.helmetshop.helmetshop.domain.Size;
import vn.helmetshop.helmetshop.repository.SizeRepository;

@Service
public class SizeService {
    private final SizeRepository sizeRepository;

    public SizeService(SizeRepository sizeRepository) {
        this.sizeRepository = sizeRepository;
    }

    public List<Size> getAllSize() {
        return this.sizeRepository.findAll();
    }

    public Size saveOrUpdateSize(Size size) {
        if (size.getId() != 0) {
            Size size2 = this.sizeRepository.findById(size.getId());
            size2.setName_size(size.getName_size());
            return sizeRepository.save(size2);
        }
        return sizeRepository.save(size);

    }

    public void deleteSize(Long id) {

        sizeRepository.deleteById(id);
    }

    public Optional<Size> getSizeById(Long id) {
        return sizeRepository.findById(id);
    }

    public Optional<Size> getSizeByName(String name) {
        return Optional.ofNullable(sizeRepository.findByName_size(name));
    }
}
