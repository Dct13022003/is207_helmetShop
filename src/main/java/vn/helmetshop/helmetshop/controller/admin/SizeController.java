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

import vn.helmetshop.helmetshop.domain.Size;

import vn.helmetshop.helmetshop.service.SizeService;

@Controller
@RequestMapping("/admin/product/size")
public class SizeController {
    private final SizeService sizeService;

    public SizeController(SizeService sizeService) {
        this.sizeService = sizeService;
    }

    @GetMapping
    public String getSizes(Model model) {
        List<Size> sizes = this.sizeService.getAllSize();
        model.addAttribute("Sizes", sizes);
        model.addAttribute("Size", new Size());
        return "admin/product/size";
    }

    @PostMapping(value = "/save")
    public String saveSize(@ModelAttribute("Size") Size size, RedirectAttributes redirectAttributes) {
        try {
            sizeService.saveOrUpdateSize(size);
            redirectAttributes.addFlashAttribute("success", "Size saved successfully!");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("error", "Error saving size!");
        }
        return "redirect:/admin/product/size";
    }

    @GetMapping("/edit/{id}")
    public String editSize(@PathVariable Long id, Model model) {
        Optional<Size> size = sizeService.getSizeById(id);
        model.addAttribute("Size", size.get());
        model.addAttribute("Sizes", sizeService.getAllSize());
        return "admin/product/size";
    }

    @PostMapping(value = "/delete/{id}")
    public String deleteSize(@PathVariable Long id, RedirectAttributes redirectAttributes) {
        try {
            sizeService.deleteSize(id);
            redirectAttributes.addFlashAttribute("success", "Size deleted successfully!");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("error", "Error deleting size!");
        }
        return "redirect:/admin/product/size";
    }
}
