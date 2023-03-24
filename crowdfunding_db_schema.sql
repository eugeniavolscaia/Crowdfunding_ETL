CREATE TABLE Contacts(
	contact_id INT PRIMARY KEY,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	email VARCHAR(50)
);

CREATE TABLE Category(
	category_id VARCHAR(4)PRIMARY KEY,
	category VARCHAR(30)
);

CREATE TABLE Subcategory(
	subcategory_id VARCHAR(8) PRIMARY KEY,
	subcategory VARCHAR(30)
);

CREATE TABLE Compaign(
	cf_id INT,
	contact_id INT,
	company_name VARCHAR(50),
	description VARCHAR(250),
	goal NUMERIC,
	pledged NUMERIC,
	outcome VARCHAR(20),
	backers_count INT,
	country VARCHAR(2),
	currency VARCHAR(3),
	launched_date DATE,
	end_date DATE,
	category_id VARCHAR(4),
	subcategory_id VARCHAR(8),
	FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
	FOREIGN KEY (category_id) REFERENCES Category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id)
);

