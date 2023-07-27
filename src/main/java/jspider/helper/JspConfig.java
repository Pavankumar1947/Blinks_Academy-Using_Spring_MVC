package jspider.helper;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan("jspider")
public class JspConfig {
	@Bean
	public EntityManagerFactory getEMF() {
		return Persistence.createEntityManagerFactory("dev");
	}

}
