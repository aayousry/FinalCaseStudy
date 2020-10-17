package hassan.abdelrahman.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import hassan.abdelrahman.models.ActiveListing;

public interface ActiveListingIF extends JpaRepository<ActiveListing, Integer> {

}
