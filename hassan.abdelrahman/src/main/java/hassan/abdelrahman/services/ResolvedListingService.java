package hassan.abdelrahman.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hassan.abdelrahman.dao.ResolvedListingIF;
import hassan.abdelrahman.models.ResolvedListing;

@Service
public class ResolvedListingService {

	@Autowired
	ResolvedListingIF rlif;

	public List<ResolvedListing> listAll() {
		return rlif.findAll();
	}

	public void save(ResolvedListing rl) {

		rlif.save(rl);

	}
}
