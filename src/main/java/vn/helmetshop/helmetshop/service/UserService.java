package vn.helmetshop.helmetshop.service;

import org.mapstruct.control.MappingControl.Use;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import vn.helmetshop.helmetshop.domain.Role;
import vn.helmetshop.helmetshop.domain.User;
import vn.helmetshop.helmetshop.repository.RoleRepository;
import vn.helmetshop.helmetshop.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;

    public UserService(UserRepository userRepository, RoleRepository roleRepository) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
    }

    public User createUser(User user) {
        User newUser = this.userRepository.save(user);
        return newUser;
    }

    public Role getRoleByName(String name) {
        return this.roleRepository.findByName(name);
    }

    public Page<User> getAllUsers(Pageable pageable) {
        return this.userRepository.findAll(pageable);
    }

    public User getUserById(long id) {
        return this.userRepository.findById(id);
    }

    public User updateUser(User user) {
        return this.userRepository.save(user);
    }

    public User getUserByEmail(String email) {
        return this.userRepository.findByEmail(email);
    }

    public User savUser(User user) {
        return this.userRepository.save(user);
    }

}
