package hassan.abdelrahman;

//import org.hibernate.Session;
//import org.hibernate.SessionFactory;
//import org.hibernate.cfg.Configuration;
//import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
//import org.springframework.context.annotation.Bean;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import hassan.abdelrahman.dao.ActiveListingIF;
import hassan.abdelrahman.dao.UserIF;
//import hassan.abdelrahman.models.ResolvedListing;

@SpringBootApplication
//@EnableJpaRepositories(basePackageClasses = {UserIF.class, ActiveListingIF.class})
public class FairShareApplication {

	public static void main(String[] args) {
		SpringApplication.run(FairShareApplication.class, args);
   }

}
