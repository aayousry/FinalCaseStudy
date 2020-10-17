package hassan.abdelrahman.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import hassan.abdelrahman.models.User;

public interface UserIF extends JpaRepository<User, Integer> {

}
