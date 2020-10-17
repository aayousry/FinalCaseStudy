package hassan.abdelrahman.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hassan.abdelrahman.dao.ActiveListingIF;
import hassan.abdelrahman.models.ActiveListing;

@Service
public class ActiveListingService {

	@Autowired
	ActiveListingIF al;
	
	public List<ActiveListing> listAll () {
		return al.findAll();
	}
}
