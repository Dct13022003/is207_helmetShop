package vn.helmetshop.helmetshop.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import vn.helmetshop.helmetshop.domain.Attribute;
import vn.helmetshop.helmetshop.repository.AttributeRepository;

@Service
public class AttributeService {
    private final AttributeRepository attributeRepository;

    public AttributeService(AttributeRepository attributeRepository) {
        this.attributeRepository = attributeRepository;
    }

    public List<Attribute> getAllAttribute() {
        return this.attributeRepository.findAll();
    }

    public Attribute saveOrUpdateAttribute(Attribute attribute) {
        return this.attributeRepository.save(attribute);
    }

    public Optional<Attribute> getAttributeById(Long id) {
       return this.attributeRepository.findById(id);
    }

    public void deleteAttribute(Long id) {
        this.attributeRepository.deleteById(id);
    }

}
