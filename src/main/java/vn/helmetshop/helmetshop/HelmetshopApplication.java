package vn.helmetshop.helmetshop;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

// @SpringBootApplication(exclude = org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration.class)
@SpringBootApplication
public class HelmetshopApplication {

	public static void main(String[] args) {
		SpringApplication.run(HelmetshopApplication.class, args);
	}

}
