package com.boot.security.server;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

/**
 * 启动类
 * 
 * @author wpw
 *
 */
/*@SpringBootApplication
public class SecurityApplication {

	public static void main(String[] args) {
		SpringApplication.run(SecurityApplication.class, args);
	}
}*/
@SpringBootApplication
public class SecurityApplication extends SpringBootServletInitializer {

	//注意：该类继承了SpringBootServletInitializer并且重写了configure方法，这是关键所在。
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		return builder.sources(SecurityApplication.class);
	}


	public static void main(String[] args) {
		SpringApplication.run(SecurityApplication.class, args);
	}
}
