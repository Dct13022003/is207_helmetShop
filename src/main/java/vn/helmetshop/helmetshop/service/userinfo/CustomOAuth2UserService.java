package vn.helmetshop.helmetshop.service.userinfo;

import java.util.Collections;
import java.util.Map;

import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.oauth2.client.userinfo.DefaultOAuth2UserService;
import org.springframework.security.oauth2.client.userinfo.OAuth2UserRequest;
import org.springframework.security.oauth2.core.OAuth2AuthenticationException;
import org.springframework.security.oauth2.core.user.DefaultOAuth2User;
import org.springframework.security.oauth2.core.user.OAuth2User;
import org.springframework.stereotype.Service;

import vn.helmetshop.helmetshop.domain.Role;
import vn.helmetshop.helmetshop.domain.User;
import vn.helmetshop.helmetshop.service.UserService;

@Service
public class CustomOAuth2UserService extends DefaultOAuth2UserService {

    private final UserService userService;

    public CustomOAuth2UserService(UserService userService) {
        this.userService = userService;
    }

    @Override
    public OAuth2User loadUser(OAuth2UserRequest userRequest) throws OAuth2AuthenticationException {
        // call api
        OAuth2User oAuth2User = super.loadUser(userRequest);

        Map<String, Object> attributes = oAuth2User.getAttributes();

        // get provider
        String registrationId = userRequest.getClientRegistration().getRegistrationId();

        // Process oAuth2User or map it to your local user database
        String email = (String) attributes.get("email");
        System.out.print(email);
        String firstName = (String) attributes.get("given_name");
        String lastName = (String) attributes.get("family_name");
        Role userRole = this.userService.getRoleByName("USER");
        if (email != null) {
            User user = this.userService.getUserByEmail(email);
            if (user == null) {
                User oUser = new User();
                oUser.setEmail(email);
                oUser.setFirstName(firstName);
                oUser.setLastName(lastName);
                oUser.setProvider("GOOGLE");
                oUser.setAvatar("default-google.png");
                oUser.setPassword("SHOPHELMET");
                oUser.setRole(userRole);
                this.userService.savUser(oUser);
            }
        }

        return new DefaultOAuth2User(
                Collections.singletonList(new SimpleGrantedAuthority("ROLE_" + userRole.getName())),
                oAuth2User.getAttributes(),
                "email");
    }
}