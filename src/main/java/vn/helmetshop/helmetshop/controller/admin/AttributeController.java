package vn.helmetshop.helmetshop.controller.admin;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import vn.helmetshop.helmetshop.domain.Attribute;

import vn.helmetshop.helmetshop.service.AttributeService;

@Controller
@RequestMapping("/admin/product/attribute")
public class AttributeController {
    private final AttributeService attributeService;

    public AttributeController(AttributeService attributeService) {
        this.attributeService = attributeService;
    }

    @GetMapping
    public String getAttributes(Model model) {
        List<Attribute> attributes = this.attributeService.getAllAttribute();
        model.addAttribute("Attributes", attributes);
        model.addAttribute("Attribute", new Attribute());
        return "admin/product/attribute";
    }

    @PostMapping(value = "/save")
    public String postSaveAttribute(@ModelAttribute("Attribute") Attribute attribute,
            RedirectAttributes redirectAttributes) {
        try {
            attributeService.saveOrUpdateAttribute(attribute);
            redirectAttributes.addFlashAttribute("success", "Size saved successfully!");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("error", "Error saving size!");
        }
        return "redirect:/admin/product/attribute";
    }

    @GetMapping("/edit/{id}")
    public String getEditAttribute(@PathVariable Long id, Model model) {
        Optional<Attribute> attribute = attributeService.getAttributeById(id);
        model.addAttribute("Attribute", attribute.get());
        model.addAttribute("Attributes", attributeService.getAllAttribute());
        return "admin/product/attribute";
    }

    @PostMapping(value = "/delete/{id}")
    public String postDeleteAttribute(@PathVariable Long id, RedirectAttributes redirectAttributes) {
        try {
            attributeService.deleteAttribute(id);
            redirectAttributes.addFlashAttribute("success", "Attribute deleted successfully!");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("error", "Error deleting size!");
        }
        return "redirect:/admin/product/attribute";
    }
}
