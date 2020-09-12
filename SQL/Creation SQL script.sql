CREATE DATABASE CaseStudy_A_Hassan /*!40100 COLLATE 'latin1_swedish_ci' */;
/*CREATE TABLE user_is_admin (
	user_id INT,
	admin_id INT,
	CONSTRAINT user_is_admin_pkey PRIMARY KEY (user_id, admin_id))
COMMENT='Table to know which Users are also Admins';*/

CREATE TABLE users (
	id INT,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(255) NOT NULL,
	`password` VARCHAR(255) NOT NULL,
	street_address VARCHAR(255) NOT NULL,
	apartment_number INT,
	City VARCHAR(50) NOT NULL,
   state_postal_code CHAR(2) NOT NULL,
   zip_code VARCHAR(16) NOT NULL,
	Country VARCHAR(50) NOT NULL,
	is_admin BOOLEAN NOT NULL,
	PRIMARY KEY (id));
	
CREATE TABLE active_listings (
	id INT,
	`name` VARCHAR(50) NOT NULL,
	category VARCHAR(50) NOT NULL,
	`condition` VARCHAR(30) NOT NULL,
	`type` VARCHAR(255) NOT NULL,
	listed_on DATETIME NOT NULL,
	is_active BOOLEAN NOT NULL, 
	last_modified DATETIME,
	/*figure out picture situation*/
	reason VARCHAR(50), /*need to have an inclusive list of options*/
	deadline DATETIME, /*when not active, depending on reason set a date to resolve (activate or resolve)*/  
	PRIMARY KEY (id));
		
CREATE TABLE resolved_listings (
	id INT,
	`name` VARCHAR(50) NOT NULL,
	category VARCHAR(50) NOT NULL,
	`condition` VARCHAR(30) NOT NULL,
	`type` VARCHAR(255) NOT NULL,
	resolved_on DATETIME NOT NULL,
	/*figure out picture situation*/
	resolution VARCHAR(50) NOT NULL, /*need to have an inclusive list of options*/
	history_message VARCHAR(500) NOT NULL, /*message that will show up to the user when browsing their history*/
	benificiary_id INT,
	PRIMARY KEY (id),
	FOREIGN KEY (benificiary_id) REFERENCES users(id));		
	
	/*Possibly add Tables active reports and resolved reports for listings and users when and if 
	I decide to integtrate allowing users to report listings and other users If I finish minimum viable 
	product and have time */
	
CREATE TABLE owns_active_listing (
	user_id INT,
	active_listing_id INT,
	PRIMARY KEY (user_id, active_listing_id),
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (active_listing_id) REFERENCES active_listings(id));
	
CREATE TABLE owns_resolved_listing (
	user_id INT,
	resolved_listing_id INT,
	PRIMARY KEY (user_id, resolved_listing_id),
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (resolved_listing_id) REFERENCES resolved_listings(id));
	
CREATE TABLE interested_active_listing (
	user_id INT,
	active_listing_id INT,
	interested_on DATETIME NOT NULL,
	PRIMARY KEY (user_id, active_listing_id),
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (active_listing_id) REFERENCES active_listings(id));
	


