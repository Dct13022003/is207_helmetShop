package vn.helmetshop.helmetshop.controller.admin;

import org.springframework.data.domain.PageRequest;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import java.util.List;
import jakarta.validation.Valid;
import java.util.Optional;

import java.sql.Timestamp;
import vn.helmetshop.helmetshop.domain.User;
import vn.helmetshop.helmetshop.service.UploadFileService;
import vn.helmetshop.helmetshop.service.UserService;

@Controller
public class UserController {

    private final UserService userService;
    private final UploadFileService uploadFileService;
    private final PasswordEncoder passwordEncoder;

    public UserController(UserService userService, UploadFileService uploadFileService,
            PasswordEncoder passwordEncoder) {
        this.userService = userService;
        this.uploadFileService = uploadFileService;
        this.passwordEncoder = passwordEncoder;
    }

    @RequestMapping("/admin/user")
    public String getUserPage(Model model, @RequestParam("page") Optional<String> pageOptional) {
        int page = 1;
        try {
            if (pageOptional.isPresent()) {
                // convert from String to int
                page = Integer.parseInt(pageOptional.get());
            } else {
                // page = 1
            }
        } catch (Exception e) {
            // page = 1
            // TODO: handle exception
        }
        Pageable pageable = PageRequest.of(page - 1, 3);
        Page<User> usersPage = this.userService.getAllUsers(pageable);
        List<User> users = usersPage.getContent();
        model.addAttribute("userShow", users);

        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", usersPage.getTotalPages());

        return "admin/user/show";
    }

    @RequestMapping("/admin/user/{id}")
    public String getUserDetailPage(Model model, @PathVariable long id) {
        User user = this.userService.getUserById(id);
        model.addAttribute("userDetail", user);
        model.addAttribute("id", id);
        return "admin/user/detail";
    }

    @GetMapping("/admin/user/create")
    public String getCreateUserPage(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create";
    }

    @PostMapping(value = "/admin/user/create")
    public String createUser(Model model,
            @ModelAttribute("newUser") @Valid User newUser,
            BindingResult newUserBindingResult,
            @RequestParam("avatarFile") MultipartFile file) {

        if (newUserBindingResult.hasErrors()) {
            return "admin/user/create";
        }
        Timestamp creat_at = new Timestamp(System.currentTimeMillis());
        String fileName = this.uploadFileService.handleSaveUploadFile(file, "avatar");
        String hashPassword = this.passwordEncoder.encode(newUser.getPassword());
        newUser.setRole(this.userService.getRoleByName(newUser.getRole().getName()));
        newUser.setAvatar(fileName);
        newUser.setCreated_at(creat_at);
        newUser.setPassword(hashPassword);
        this.userService.createUser(newUser);
        return "redirect:/admin/user";
    }

    @RequestMapping("/admin/user/update/{id}")
    public String getUserUpdatePage(Model model, @PathVariable long id) {
        User user = this.userService.getUserById(id);
        System.out.println(user);
        model.addAttribute("userUpdate", user);
        return "admin/user/update";
    }

    @PostMapping("/admin/user/update")
    public String postUpdateUser(Model model,
            @ModelAttribute("userUpdate") User userUpdate,
            @RequestParam("avatarFile") MultipartFile file) {
        User currentUser = this.userService.getUserById(userUpdate.getId());
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
            currentUser.setAddress(userUpdate.getAddress());
            currentUser.setFirstName(userUpdate.getFirstName());
            currentUser.setLastName(userUpdate.getLastName());
            currentUser.setPhone(userUpdate.getPhone());
            currentUser.setUpdated_at(update_at);
            this.userService.updateUser(currentUser);
        }
        return "redirect:/admin/user";
    }

}
