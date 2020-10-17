package hassan.abdelrahman.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hassan.abdelrahman.dao.UserIF;
import hassan.abdelrahman.models.User;

@Service
public class UserService {

	@Autowired
	UserIF userDAO;
	
	public List<User> listAll () {
		return userDAO.findAll();
	}
}
