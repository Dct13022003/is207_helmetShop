package vn.helmetshop.helmetshop.controller.client;

import java.security.Principal;
import java.sql.Timestamp;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import jakarta.validation.Valid;
import vn.helmetshop.helmetshop.domain.Product;
import vn.helmetshop.helmetshop.domain.User;
import vn.helmetshop.helmetshop.domain.dto.CategoryDTO;
import vn.helmetshop.helmetshop.service.CategorySevice;
import vn.helmetshop.helmetshop.service.ProductService;
import vn.helmetshop.helmetshop.service.UploadFileService;
import vn.helmetshop.helmetshop.service.UserService;

@Controller
public class HomePageController {
    private final ProductService productService;
    private final PasswordEncoder passwordEncoder;
    private final UploadFileService uploadFileService;
    private final CategorySevice categorySevice;
    private final UserService userService;

    public HomePageController(ProductService productService, CategorySevice categorySevice, UserService userService,
            UploadFileService uploadFileService, PasswordEncoder passwordEncoder) {
        this.productService = productService;
        this.categorySevice = categorySevice;
        this.userService = userService;
        this.uploadFileService = uploadFileService;
        this.passwordEncoder = passwordEncoder;
    }

    @GetMapping(value = "/")
    public String getHomePage(Model model) {
        List<CategoryDTO> categories = this.categorySevice.getAllCategories();
        List<Product> productNBs = this.productService.getProductsByTag("Nổi bật");
        model.addAttribute("categories", categories);
        model.addAttribute("productNBs", productNBs);
        return "user/homepage/show";
    }

    @GetMapping("/login")
    public String getLoginPage(Model model) {

        return "user/auth/login";
    }

    @GetMapping("/access-deny")
    public String getDenyPage(Model model) {

        return "user/auth/deny";
    }

    @GetMapping("/profile")
    public String getProfilePage(Principal principal, Model model) {
        String username = principal.getName();
        User user = this.userService.getUserByEmail(username);
        model.addAttribute("inforUser", user);
        return "user/auth/profile";
    }

    @PostMapping("/profile/update")
    public String postUpdateInforUser(@ModelAttribute("inforUser") User inforUser,
            @RequestParam("avatarFile") MultipartFile file) {
        User currentUser = this.userService.getUserById(inforUser.getId());
        System.out.println(currentUser);
        if (currentUser != null) {
            Timestamp update_at = new Timestamp(System.currentTimeMillis());
            String fileName = this.uploadFileService.handleSaveUploadFile(file, "avatar");
            if (fileName != "") {
                String fileNameCurrent = currentUser.getAvatar();
                boolean a = this.uploadFileService.handleDeleteFile(fileNameCurrent, "avatar");
                System.out.println("a");
                currentUser.setAvatar(fileName);
            }
            currentUser.setAddress(inforUser.getAddress());
            currentUser.setFirstName(inforUser.getFirstName());
            currentUser.setLastName(inforUser.getLastName());
            currentUser.setPhone(inforUser.getPhone());
            currentUser.setUpdated_at(update_at);
            this.userService.updateUser(currentUser);
        }
        return "redirect:/";

    }

    @GetMapping("/policy")
    public String getPolicyPage() {
        return "user/blog/policy";
    }

    @GetMapping("/qua-trinh-phat-trien")
    public String getQua_trinh_phat_trien_Page() {
        return "user/blog/qua_trinh_phat_trien";
    }

    @GetMapping("/gioi-thieu-chung")
    public String getGioi_thieu_chung_Page() {
        return "user/blog/gioi_thieu_chung";
    }

    @GetMapping("/contact")
    public String getContact_Page() {
        return "user/blog/contact";
    }

    @GetMapping("/register")
    public String getRegisterPage(Model model) {
        model.addAttribute("registerUser", new User());
        return "user/auth/register";
    }

    @PostMapping("/register")
    public String handleRegister(Model model,
            @ModelAttribute("registerUser") @Valid User userRegister,
            BindingResult bindingResult) {

        User user = this.userService.getUserByEmail(userRegister.getEmail());
        if (user != null) {
            model.addAttribute("message", "Email này đã tồn tại");
            return "user/auth/register";
        }

        String hashPassword = this.passwordEncoder.encode(userRegister.getPassword());

        userRegister.setPassword(hashPassword);
        userRegister.setRole(this.userService.getRoleByName("USER"));
        // save
        this.userService.createUser(userRegister);
        return "redirect:/login";

    }
}
